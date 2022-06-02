defmodule Phxws.Vehicles.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicles" do
    field :license_plate, :string
    field :status, :string
    many_to_many :transporters, Phxws.Transporters.Transporter, join_through: :transporter_vehicles
    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:license_plate, :status])
    |> validate_required([:license_plate, :status])
  end
end
