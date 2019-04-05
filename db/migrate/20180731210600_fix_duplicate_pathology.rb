class FixDuplicatePathology < ActiveRecord::Migration
  def change
    PatientsPathology.where('pathology_id = ?', 21).update_all('pathology_id = 10')
    PatientsPathology.where('pathology_id = ?', 15).update_all('pathology_id = 4')
    PatientsPathology.where('pathology_id = ?', 19).update_all('pathology_id = 8')
    PatientsPathology.where('pathology_id = ?', 18).update_all('pathology_id = 7')
    PatientsPathology.where('pathology_id = ?', 20).update_all('pathology_id = 9')
    PatientsPathology.where('pathology_id = ?', 13).update_all('pathology_id = 2')
    PatientsPathology.where('pathology_id = ?', 14).update_all('pathology_id = 3')
    PatientsPathology.where('pathology_id = ?', 17).update_all('pathology_id = 6')
    PatientsPathology.where('pathology_id = ?', 16).update_all('pathology_id = 5')
    PatientsPathology.where('pathology_id = ?', 22).update_all('pathology_id = 11')
    PatientsPathology.where('pathology_id = ?', 12).update_all('pathology_id = 1')
    Pathology.where('id > 11 AND id < 23').delete_all
  end
end