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
-- Module      : Network.Google.Run.Projects.Locations.Services.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Services.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.list@.
module Network.Google.Run.Projects.Locations.Services.List
  ( -- * Resource
    RunProjectsLocationsServicesListResource,

    -- ** Constructing a Request
    newRunProjectsLocationsServicesList,
    RunProjectsLocationsServicesList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.list@ method which the
-- 'RunProjectsLocationsServicesList' request conforms to.
type RunProjectsLocationsServicesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "services"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudRunV2ListServicesResponse

-- | List Services.
--
-- /See:/ 'newRunProjectsLocationsServicesList' smart constructor.
data RunProjectsLocationsServicesList = RunProjectsLocationsServicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of Services to return in this call.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token received from a previous call to ListServices. All other parameters must match.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The location and project to list resources on. Location must be a valid GCP region, and may not be the \"-\" wildcard. Format: projects\/{projectnumber}\/locations\/{location}
    parent :: Core.Text,
    -- | If true, returns deleted (but unexpired) resources along with active ones.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsServicesList' with the minimum fields required to make a request.
newRunProjectsLocationsServicesList ::
  -- |  Required. The location and project to list resources on. Location must be a valid GCP region, and may not be the \"-\" wildcard. Format: projects\/{projectnumber}\/locations\/{location} See 'parent'.
  Core.Text ->
  RunProjectsLocationsServicesList
newRunProjectsLocationsServicesList parent =
  RunProjectsLocationsServicesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      showDeleted = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RunProjectsLocationsServicesList
  where
  type
    Rs RunProjectsLocationsServicesList =
      GoogleCloudRunV2ListServicesResponse
  type
    Scopes RunProjectsLocationsServicesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient RunProjectsLocationsServicesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      showDeleted
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsServicesListResource
          )
          Core.mempty