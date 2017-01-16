class User < ActiveRecord::Base
  rolify
  belongs_to :practitioner
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  protected
  def confirmation_required?
    false
  end
end
