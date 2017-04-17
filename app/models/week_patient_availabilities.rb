class WeekPatientAvailabilities
  attr_accessor :days

  def initialize(patient)

    self.days = []

    (0..6).each do |day|
      self.days[day] = []
      (0..96).each do |period|
        patient_availability = PatientAvailability.new
        patient_availability.patient = patient
        patient_availability.day = day
        patient_availability.period = period
        if day == 0 || day == 6
          patient_availability.available = false
        else
          patient_availability.available = false
        end

        self.days[day][period] = patient_availability
      end
    end

    patient.patient_availabilities.each do |patient_availability|
      self.days[patient_availability.day][patient_availability.period] = patient_availability
    end
  end
end