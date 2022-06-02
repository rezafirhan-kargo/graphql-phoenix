defmodule Phxws.Transporters.Transporter do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transporters" do
    field :name, :string
    field :npwp_number, :string
    field :phone_number, :string
    field :status, :string
    many_to_many :vehicles, Phxws.Vehicles.Vehicle, join_through: :transporter_vehicles
    timestamps()
  end

  @doc false
  def changeset(transporter, attrs) do
    transporter
    |> cast(attrs, [:name, :status, :phone_number, :npwp_number])
    |> validate_required([:name, :status, :phone_number, :npwp_number])
  end
end
