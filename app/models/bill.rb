class Bill < ApplicationRecord
  belongs_to :announcement
  validates :reference_bill, uniqueness: true, presence: true

  def self.reference(customer)
    bills = Bill.all

    letter = customer.gsub!(/[^0-9A-Za-z]/, '').upcase.slice(0..3)

    number_array = (0..100).to_a.shuffle.take(4)
    number = number_array.join

    ref_build = letter << number

    until bills.where(reference_bill: "#{ref_build}") == []
      letter = customer.gsub!(/[^0-9A-Za-z]/, '').upcase.slice(0..3)

      number_array = (0..100).to_a.shuffle.take(4)
      number = number_array.join

      ref_build = letter << number

    end
    return ref_build
  end
end
