class Document < ApplicationRecord

  DOC_TYPES = ['Marksheet', 'Photo', 'CNIC', 'Address Proof', 'Others'].freeze

  belongs_to :employee
  validates :name, :doc_type, presence:true
end
