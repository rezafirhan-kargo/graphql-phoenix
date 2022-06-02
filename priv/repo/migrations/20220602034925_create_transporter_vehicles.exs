defmodule Phxws.Repo.Migrations.CreateTransporterVehicles do
  use Ecto.Migration

  def change do
    create table(:transporter_vehicles) do
      add :transporter_id, references(:transporters)
      add :vehicle_id, references(:vehicles)
      timestamps()
    end
    create unique_index(:transporter_vehicles, [:transporter_id, :vehicle_id])
  end
end
