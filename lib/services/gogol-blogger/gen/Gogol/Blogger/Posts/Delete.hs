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
-- Module      : Gogol.Blogger.Posts.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a post by blog id and post id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.delete@.
module Gogol.Blogger.Posts.Delete
    (
    -- * Resource
      BloggerPostsDeleteResource

    -- ** Constructing a Request
    , newBloggerPostsDelete
    , BloggerPostsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Blogger.Types

-- | A resource alias for @blogger.posts.delete@ method which the
-- 'BloggerPostsDelete' request conforms to.
type BloggerPostsDeleteResource =
     "v3" Core.:>
       "blogs" Core.:>
         Core.Capture "blogId" Core.Text Core.:>
           "posts" Core.:>
             Core.Capture "postId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Delete '[Core.JSON] ()

-- | Deletes a post by blog id and post id.
--
-- /See:/ 'newBloggerPostsDelete' smart constructor.
data BloggerPostsDelete = BloggerPostsDelete
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
    , postId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsDelete' with the minimum fields required to make a request.
newBloggerPostsDelete 
    ::  Core.Text
       -- ^  See 'blogId'.
    -> Core.Text
       -- ^  See 'postId'.
    -> BloggerPostsDelete
newBloggerPostsDelete blogId postId =
  BloggerPostsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , blogId = blogId
    , callback = Core.Nothing
    , postId = postId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerPostsDelete where
        type Rs BloggerPostsDelete = ()
        type Scopes BloggerPostsDelete =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient BloggerPostsDelete{..}
          = go blogId postId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bloggerService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BloggerPostsDeleteResource)
                      Core.mempty
