require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  test "cant create empty doctor" do
    @doctor = Doctor.create

    assert_not @doctor.valid?, "un docteur ne peut pas etre cree sans information"

    assert @doctor.errors[:first_name]
    assert @doctor.errors[:last_name]
    assert @doctor.errors[:zip_code]
    assert @doctor.errors[:city]
    assert @doctor.errors[:address_1]
    assert @doctor.errors[:country]
  end

  test "can create doctor" do
    assert_difference "Doctor.count", 1, "le nombre de doctors doit augmenter de 1" do 
      @doctor = Doctor.create(:first_name => "JeanMary",
                              :last_name => "LECOUTEUX",
                              :address_1 => "6 avenue victor hugo",
              	    		      :country => "FR",
                              :city => "Saint Mandé", 
                              :zip_code => "94160",
                              :profession => professions(:generaliste)
                       )

     assert @doctor.valid?, "il doit etre possible de creer ce doctor"

     assert @doctor.longitude, "la longitude doit pouvoir etre calculée"
     assert @doctor.latitude, "la latitude doit pouvoir etre calculée"
   end

  end
end
