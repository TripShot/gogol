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
-- Module      : Gogol.Blogger.BlogUserInfos.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one blog and user info pair by blog id and user id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.blogUserInfos.get@.
module Gogol.Blogger.BlogUserInfos.Get
    (
    -- * Resource
      BloggerBlogUserInfosGetResource

    -- ** Constructing a Request
    , newBloggerBlogUserInfosGet
    , BloggerBlogUserInfosGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Blogger.Types

-- | A resource alias for @blogger.blogUserInfos.get@ method which the
-- 'BloggerBlogUserInfosGet' request conforms to.
type BloggerBlogUserInfosGetResource =
     "v3" Core.:>
       "users" Core.:>
         Core.Capture "userId" Core.Text Core.:>
           "blogs" Core.:>
             Core.Capture "blogId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "maxPosts" Core.Word32 Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] BlogUserInfo

-- | Gets one blog and user info pair by blog id and user id.
--
-- /See:/ 'newBloggerBlogUserInfosGet' smart constructor.
data BloggerBlogUserInfosGet = BloggerBlogUserInfosGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | 
    , blogId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | 
    , maxPosts :: (Core.Maybe Core.Word32)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | 
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerBlogUserInfosGet' with the minimum fields required to make a request.
newBloggerBlogUserInfosGet 
    ::  Core.Text
       -- ^  See 'blogId'.
    -> Core.Text
       -- ^  See 'userId'.
    -> BloggerBlogUserInfosGet
newBloggerBlogUserInfosGet blogId userId =
  BloggerBlogUserInfosGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , blogId = blogId
    , callback = Core.Nothing
    , maxPosts = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest BloggerBlogUserInfosGet
         where
        type Rs BloggerBlogUserInfosGet = BlogUserInfo
        type Scopes BloggerBlogUserInfosGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient BloggerBlogUserInfosGet{..}
          = go userId blogId xgafv accessToken callback
              maxPosts
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bloggerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BloggerBlogUserInfosGetResource)
                      Core.mempty
