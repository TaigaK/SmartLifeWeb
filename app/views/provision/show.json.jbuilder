json.id @provision.id
json.name @provision.name
json.creator @provision.user_email
json.latitude @provision.latitude
json.longitude @provision.longitude
json.note @provision.note
json.contract @provision.invitation
json.end_date @provision.ended
json.candidates do
  @provision_candidates.each do |candidate|
    json.id candidate.candidates_id
    json.name candidate.name
    json.vote candidate.vote
    json.url invitation_url(candidate.invitations_id)
  end
end