defmodule PhxwsWeb.Gettext do
  use Abisnthe.Schema

  query do
    field :dummy, :integer do
      resolve(fn _entitiy, _args, _context ->
        {:ok, 5}
      end)
    end
  end
  @moduledoc """
  A module providing Internationalization with a gettext-based API.

  By using [Gettext](https://hexdocs.pm/gettext),
  your module gains a set of macros for translations, for example:

      import PhxwsWeb.Gettext

      # Simple translation
      gettext("Here is the string to translate")

      # Plural translation
      ngettext("Here is the string to translate",
               "Here are the strings to translate",
               3)

      # Domain-based translation
      dgettext("errors", "Here is the error message to translate")

  See the [Gettext Docs](https://hexdocs.pm/gettext) for detailed usage.
  """
  use Gettext, otp_app: :phxws
end
