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
-- Module      : Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT/FOUND, INVALID/ARGUMENT, and PERMISSION_DENIED errors.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.setIamPolicy@.
module Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.SetIamPolicy
  ( -- * Resource
    DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicyResource,

    -- ** Constructing a Request
    newDataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy,
    DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.setIamPolicy@ method which the
-- 'DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy' request conforms to.
type DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT/FOUND, INVALID/ARGUMENT, and PERMISSION_DENIED errors.
--
-- /See:/ 'newDataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy' smart constructor.
data DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy = DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy' with the minimum fields required to make a request.
newDataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy
newDataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy payload resource =
  DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy
  where
  type
    Rs
      DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy =
      Policy
  type
    Scopes
      DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicyResource
            )
            Core.mempty