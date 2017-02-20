defmodule ESI.API.Alliance do

  @doc """
  Resolve a set of alliance IDs to alliance names

  ## Swagger

  The Swagger Operation ID for this function is `get_alliances_names`

  ## Options

  - `:alliance_ids` (REQUIRED) -- A comma separated list of alliance IDs
  - `:datasource` (DEFAULT: `:tranquility`) -- The server name you would like data from
  - `:user_agent` -- Client identifier, takes precedence over headers
  """
  @type names_opts :: [
    alliance_ids: [nil | integer],
    datasource: nil | :tranquility | :singularity,
    user_agent: nil | String.t,
  ]
  # [:word]
  @spec names(opts :: names_opts) :: ESI.Request.t
  def names(opts \\ []) do
    %ESI.Request{
      verb: :get,
      path: "/alliances/names/",
      query_opts: Keyword.take(opts, [:alliance_ids, :datasource, :user_agent]),
    }
  end

  @doc """
  List all current member corporations of an alliance

  ## Swagger

  The Swagger Operation ID for this function is `get_alliances_alliance_id_corporations`

  ## Options

  - `:datasource` (DEFAULT: `:tranquility`) -- The server name you would like data from
  - `:user_agent` -- Client identifier, takes precedence over headers
  """
  @type corporations_opts :: [
    datasource: nil | :tranquility | :singularity,
    user_agent: nil | String.t,
  ]
  # [:word, :arg]
  @spec corporations(alliance_id :: integer, opts :: corporations_opts) :: ESI.Request.t
  def corporations(alliance_id, opts \\ []) do
    %ESI.Request{
      verb: :get,
      path: "/alliances/#{alliance_id}/corporations/",
      query_opts: Keyword.take(opts, [:datasource, :user_agent]),
    }
  end

  @doc """
  Get the icon urls for a alliance

  ## Swagger

  The Swagger Operation ID for this function is `get_alliances_alliance_id_icons`

  ## Options

  - `:datasource` (DEFAULT: `:tranquility`) -- The server name you would like data from
  - `:user_agent` -- Client identifier, takes precedence over headers
  """
  @type icons_opts :: [
    datasource: nil | :tranquility | :singularity,
    user_agent: nil | String.t,
  ]
  # [:word, :arg]
  @spec icons(alliance_id :: integer, opts :: icons_opts) :: ESI.Request.t
  def icons(alliance_id, opts \\ []) do
    %ESI.Request{
      verb: :get,
      path: "/alliances/#{alliance_id}/icons/",
      query_opts: Keyword.take(opts, [:datasource, :user_agent]),
    }
  end

  @doc """
  Public information about an alliance

  ## Swagger

  The Swagger Operation ID for this function is `get_alliances_alliance_id`

  ## Options

  - `:datasource` (DEFAULT: `:tranquility`) -- The server name you would like data from
  - `:user_agent` -- Client identifier, takes precedence over headers
  """
  @type alliance_opts :: [
    datasource: nil | :tranquility | :singularity,
    user_agent: nil | String.t,
  ]
  # [:arg]
  @spec alliance(alliance_id :: integer, opts :: alliance_opts) :: ESI.Request.t
  def alliance(alliance_id, opts \\ []) do
    %ESI.Request{
      verb: :get,
      path: "/alliances/#{alliance_id}/",
      query_opts: Keyword.take(opts, [:datasource, :user_agent]),
    }
  end

  @doc """
  List all active player alliances

  ## Swagger

  The Swagger Operation ID for this function is `get_alliances`

  ## Options

  - `:datasource` (DEFAULT: `:tranquility`) -- The server name you would like data from
  - `:user_agent` -- Client identifier, takes precedence over headers
  """
  @type alliances_opts :: [
    datasource: nil | :tranquility | :singularity,
    user_agent: nil | String.t,
  ]
  # []
  @spec alliances(opts :: alliances_opts) :: ESI.Request.t
  def alliances(opts \\ []) do
    %ESI.Request{
      verb: :get,
      path: "/alliances/",
      query_opts: Keyword.take(opts, [:datasource, :user_agent]),
    }
  end
end