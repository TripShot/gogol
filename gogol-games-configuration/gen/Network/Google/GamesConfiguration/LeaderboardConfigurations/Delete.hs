{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.GamesConfiguration.LeaderboardConfigurations.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.delete@.
module Network.Google.GamesConfiguration.LeaderboardConfigurations.Delete
  ( -- * Resource
    GamesConfigurationLeaderboardConfigurationsDeleteResource,

    -- ** Constructing a Request
    newGamesConfigurationLeaderboardConfigurationsDelete,
    GamesConfigurationLeaderboardConfigurationsDelete,
  )
where

import Network.Google.GamesConfiguration.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.delete@ method which the
-- 'GamesConfigurationLeaderboardConfigurationsDelete' request conforms to.
type GamesConfigurationLeaderboardConfigurationsDeleteResource =
  "games"
    Core.:> "v1configuration"
    Core.:> "leaderboards"
    Core.:> Core.Capture "leaderboardId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Delete the leaderboard configuration with the given ID.
--
-- /See:/ 'newGamesConfigurationLeaderboardConfigurationsDelete' smart constructor.
data GamesConfigurationLeaderboardConfigurationsDelete = GamesConfigurationLeaderboardConfigurationsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the leaderboard.
    leaderboardId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationLeaderboardConfigurationsDelete' with the minimum fields required to make a request.
newGamesConfigurationLeaderboardConfigurationsDelete ::
  -- |  The ID of the leaderboard. See 'leaderboardId'.
  Core.Text ->
  GamesConfigurationLeaderboardConfigurationsDelete
newGamesConfigurationLeaderboardConfigurationsDelete leaderboardId =
  GamesConfigurationLeaderboardConfigurationsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      leaderboardId = leaderboardId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesConfigurationLeaderboardConfigurationsDelete
  where
  type
    Rs
      GamesConfigurationLeaderboardConfigurationsDelete =
      ()
  type
    Scopes
      GamesConfigurationLeaderboardConfigurationsDelete =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    GamesConfigurationLeaderboardConfigurationsDelete {..} =
      go
        leaderboardId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        gamesConfigurationService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesConfigurationLeaderboardConfigurationsDeleteResource
            )
            Core.mempty