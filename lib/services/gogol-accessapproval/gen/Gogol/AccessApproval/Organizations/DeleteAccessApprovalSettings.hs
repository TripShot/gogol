{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AccessApproval.Organizations.DeleteAccessApprovalSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the project, folder, or organization, but only if all ancestors also have Access Approval disabled. If Access Approval is enabled at a higher level of the hierarchy, then Access Approval will still be enabled at this level as the settings are inherited.
--
-- /See:/ <https://cloud.google.com/cloud-provider-access-management/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.deleteAccessApprovalSettings@.
module Gogol.AccessApproval.Organizations.DeleteAccessApprovalSettings
    (
    -- * Resource
      AccessApprovalOrganizationsDeleteAccessApprovalSettingsResource

    -- ** Constructing a Request
    , newAccessApprovalOrganizationsDeleteAccessApprovalSettings
    , AccessApprovalOrganizationsDeleteAccessApprovalSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessApproval.Types

-- | A resource alias for @accessapproval.organizations.deleteAccessApprovalSettings@ method which the
-- 'AccessApprovalOrganizationsDeleteAccessApprovalSettings' request conforms to.
type AccessApprovalOrganizationsDeleteAccessApprovalSettingsResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the project, folder, or organization, but only if all ancestors also have Access Approval disabled. If Access Approval is enabled at a higher level of the hierarchy, then Access Approval will still be enabled at this level as the settings are inherited.
--
-- /See:/ 'newAccessApprovalOrganizationsDeleteAccessApprovalSettings' smart constructor.
data AccessApprovalOrganizationsDeleteAccessApprovalSettings = AccessApprovalOrganizationsDeleteAccessApprovalSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the AccessApprovalSettings to delete.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalOrganizationsDeleteAccessApprovalSettings' with the minimum fields required to make a request.
newAccessApprovalOrganizationsDeleteAccessApprovalSettings 
    ::  Core.Text
       -- ^  Name of the AccessApprovalSettings to delete. See 'name'.
    -> AccessApprovalOrganizationsDeleteAccessApprovalSettings
newAccessApprovalOrganizationsDeleteAccessApprovalSettings name =
  AccessApprovalOrganizationsDeleteAccessApprovalSettings
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessApprovalOrganizationsDeleteAccessApprovalSettings
         where
        type Rs
               AccessApprovalOrganizationsDeleteAccessApprovalSettings
             = Empty
        type Scopes
               AccessApprovalOrganizationsDeleteAccessApprovalSettings
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessApprovalOrganizationsDeleteAccessApprovalSettings{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              accessApprovalService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessApprovalOrganizationsDeleteAccessApprovalSettingsResource)
                      Core.mempty
