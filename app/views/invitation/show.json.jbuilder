json.id @invitation.id
json.name @invitation.name
json.creator @invitation.user_email
json.latitude @invitation.latitude
json.longitude @invitation.longitude
json.note @invitation.note
json.contract @invitation.provision
json.end_date @invitation.ended
json.candidates do
  @invitation_candidates.each do |candidate|
    json.id candidate.candidates_id
    json.name candidate.name
    json.vote candidate.vote
    json.url provision_url(candidate.provisions_id)
  end
end