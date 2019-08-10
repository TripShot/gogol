{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.Lookup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of a
-- Membership within a Group by member\'s EntityKey.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.lookup@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.Lookup
    (
    -- * REST Resource
      GroupsMembershipsLookupResource

    -- * Creating a Request
    , groupsMembershipsLookup
    , GroupsMembershipsLookup

    -- * Request Lenses
    , gmlParent
    , gmlXgafv
    , gmlUploadProtocol
    , gmlAccessToken
    , gmlUploadType
    , gmlMemberKeyId
    , gmlMemberKeyNamespace
    , gmlCallback
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.lookup@ method which the
-- 'GroupsMembershipsLookup' request conforms to.
type GroupsMembershipsLookupResource =
     "v1" :>
       Capture "parent" Text :>
         "memberships:lookup" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "memberKey.id" Text :>
                     QueryParam "memberKey.namespace" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] LookupMembershipNameResponse

-- | Looks up [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of a
-- Membership within a Group by member\'s EntityKey.
--
-- /See:/ 'groupsMembershipsLookup' smart constructor.
data GroupsMembershipsLookup =
  GroupsMembershipsLookup'
    { _gmlParent             :: !Text
    , _gmlXgafv              :: !(Maybe Xgafv)
    , _gmlUploadProtocol     :: !(Maybe Text)
    , _gmlAccessToken        :: !(Maybe Text)
    , _gmlUploadType         :: !(Maybe Text)
    , _gmlMemberKeyId        :: !(Maybe Text)
    , _gmlMemberKeyNamespace :: !(Maybe Text)
    , _gmlCallback           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsLookup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmlParent'
--
-- * 'gmlXgafv'
--
-- * 'gmlUploadProtocol'
--
-- * 'gmlAccessToken'
--
-- * 'gmlUploadType'
--
-- * 'gmlMemberKeyId'
--
-- * 'gmlMemberKeyNamespace'
--
-- * 'gmlCallback'
groupsMembershipsLookup
    :: Text -- ^ 'gmlParent'
    -> GroupsMembershipsLookup
groupsMembershipsLookup pGmlParent_ =
  GroupsMembershipsLookup'
    { _gmlParent = pGmlParent_
    , _gmlXgafv = Nothing
    , _gmlUploadProtocol = Nothing
    , _gmlAccessToken = Nothing
    , _gmlUploadType = Nothing
    , _gmlMemberKeyId = Nothing
    , _gmlMemberKeyNamespace = Nothing
    , _gmlCallback = Nothing
    }


-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Group to lookup Membership within. Format: \`groups\/{group_id}\`, where
-- \`group_id\` is the unique ID assigned to the Group.
gmlParent :: Lens' GroupsMembershipsLookup Text
gmlParent
  = lens _gmlParent (\ s a -> s{_gmlParent = a})

-- | V1 error format.
gmlXgafv :: Lens' GroupsMembershipsLookup (Maybe Xgafv)
gmlXgafv = lens _gmlXgafv (\ s a -> s{_gmlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmlUploadProtocol :: Lens' GroupsMembershipsLookup (Maybe Text)
gmlUploadProtocol
  = lens _gmlUploadProtocol
      (\ s a -> s{_gmlUploadProtocol = a})

-- | OAuth access token.
gmlAccessToken :: Lens' GroupsMembershipsLookup (Maybe Text)
gmlAccessToken
  = lens _gmlAccessToken
      (\ s a -> s{_gmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmlUploadType :: Lens' GroupsMembershipsLookup (Maybe Text)
gmlUploadType
  = lens _gmlUploadType
      (\ s a -> s{_gmlUploadType = a})

-- | The ID of the entity within the given namespace. The ID must be unique
-- within its namespace.
gmlMemberKeyId :: Lens' GroupsMembershipsLookup (Maybe Text)
gmlMemberKeyId
  = lens _gmlMemberKeyId
      (\ s a -> s{_gmlMemberKeyId = a})

-- | Namespaces provide isolation for IDs, so an ID only needs to be unique
-- within its namespace. Namespaces are currently only created as part of
-- IdentitySource creation from Admin Console. A namespace
-- \`\"identitysources\/{identity_source_id}\"\` is created corresponding
-- to every Identity Source \`identity_source_id\`.
gmlMemberKeyNamespace :: Lens' GroupsMembershipsLookup (Maybe Text)
gmlMemberKeyNamespace
  = lens _gmlMemberKeyNamespace
      (\ s a -> s{_gmlMemberKeyNamespace = a})

-- | JSONP
gmlCallback :: Lens' GroupsMembershipsLookup (Maybe Text)
gmlCallback
  = lens _gmlCallback (\ s a -> s{_gmlCallback = a})

instance GoogleRequest GroupsMembershipsLookup where
        type Rs GroupsMembershipsLookup =
             LookupMembershipNameResponse
        type Scopes GroupsMembershipsLookup =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly"]
        requestClient GroupsMembershipsLookup'{..}
          = go _gmlParent _gmlXgafv _gmlUploadProtocol
              _gmlAccessToken
              _gmlUploadType
              _gmlMemberKeyId
              _gmlMemberKeyNamespace
              _gmlCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsMembershipsLookupResource)
                      mempty
