def ref_object_touch(record)

  return true unless Setting.get('import_mode')
  member_ids = []
  organization_id_changed = record.saved_changes['organization_id']

  member_ids += record.organization.member_ids
  member_ids.uniq.each do |user_id|
    next if user_id == record.id

    User.find(user_id).touch
  end
  true
end

def organization_changed?(organization_id_changed, member_ids)
  return unless organization_id_changed && organization_id_changed[0] != organization_id_changed[1]
  return unless organization_id_changed[0]
  return unless User.where(organization_id: organization_id_changed[0]).count < 100
  organization = Organization.find(organization_id_changed[0])
  organization.touch
  member_ids = organization.member_ids
end

def record_organization (record)
  return unless record.organization
  return unless User.where(organization_id: record.organization_id).count < 100
  record.organization.touch
  member_ids += record.organization.member_ids
end