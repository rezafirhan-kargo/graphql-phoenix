defmodule Phxws.VehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Phxws.Vehicles` context.
  """

  @doc """
  Generate a vehicle.
  """
  def vehicle_fixture(attrs \\ %{}) do
    {:ok, vehicle} =
      attrs
      |> Enum.into(%{
        license_plate: "some license_plate",
        status: "some status"
      })
      |> Phxws.Vehicles.create_vehicle()

    vehicle
  end
end
