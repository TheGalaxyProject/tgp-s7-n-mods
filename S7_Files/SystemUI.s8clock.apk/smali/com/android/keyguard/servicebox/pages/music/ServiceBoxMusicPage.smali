.class public Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;
    }
.end annotation


# static fields
.field private static final INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

.field private static final INTER_SINEINOUT80:Landroid/view/animation/Interpolator;

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mAlbumSwitchListener:Landroid/view/View$OnClickListener;

.field private mDismissTarnsitionListenerAdapter:Landroid/transition/Transition$TransitionListenerAdapter;

.field private mIsAnimating:Z

.field private mIsReserved:Z

.field private mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mMetaData:Landroid/media/MediaMetadata;

.field private mMusicAppNameTextView:Landroid/widget/TextView;

.field private mMusicArtistTextView:Landroid/widget/TextView;

.field private mMusicCoverView:Landroid/widget/ImageView;

.field private mMusicHolder:Landroid/widget/FrameLayout;

.field private mMusicLyricsView:Landroid/widget/TextView;

.field private mMusicTitleTextView:Landroid/widget/TextView;

.field private mNextBtn:Landroid/widget/ImageButton;

.field private mPageType:I

.field private mPauseBtn:Landroid/widget/ImageButton;

.field private mPauseBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mPlayBtn:Landroid/widget/ImageButton;

.field private mPlayBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mPrevBtn:Landroid/widget/ImageButton;

.field private mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->dismissServiceBox()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->showServiceBox()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-class v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 60
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT80:Landroid/view/animation/Interpolator;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "android.media.metadata.ART"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 61
    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    .line 86
    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsAnimating:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsReserved:Z

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    .line 90
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mDismissTarnsitionListenerAdapter:Landroid/transition/Transition$TransitionListenerAdapter;

    .line 98
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    .line 122
    return-void
.end method

.method private attachClockPage(Landroid/transition/Transition$TransitionListener;)V
    .locals 10
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 254
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v1, 0x1

    .line 256
    .local v1, "hasChild":Z
    :goto_0
    sget-object v5, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "attachClockPage type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", hasChild = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", listener = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "childPage":Landroid/view/View;
    iget v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    if-nez v5, :cond_2

    .line 259
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$layout;->servicebox_music_page_small:I

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "childPage":Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_4

    .line 267
    new-instance v4, Landroid/transition/AutoTransition;

    invoke-direct {v4}, Landroid/transition/AutoTransition;-><init>()V

    .line 268
    .local v4, "t":Landroid/transition/Transition;
    sget v5, Lcom/android/keyguard/R$id;->servicebox_music_page_appinfo:I

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 269
    sget v5, Lcom/android/keyguard/R$id;->servicebox_music_page_title:I

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 270
    sget v5, Lcom/android/keyguard/R$id;->servicebox_music_page_artist:I

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 271
    sget v5, Lcom/android/keyguard/R$id;->servicebox_music_page_cover:I

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 272
    sget v5, Lcom/android/keyguard/R$id;->servicebox_music_page_lyrics:I

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 273
    sget v5, Lcom/android/keyguard/R$id;->servicebox_music_controller_container:I

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iput-boolean v9, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsAnimating:Z

    .line 276
    invoke-virtual {v4, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 279
    :cond_0
    new-instance v3, Landroid/transition/Scene;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-direct {v3, v5, v0}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 280
    .local v3, "scene":Landroid/transition/Scene;
    invoke-static {v3, v4}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 291
    .end local v3    # "scene":Landroid/transition/Scene;
    .end local v4    # "t":Landroid/transition/Transition;
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->initViews()V

    .line 292
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->clear()V

    .line 293
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;)V

    .line 253
    return-void

    .line 254
    .end local v0    # "childPage":Landroid/view/View;
    .end local v1    # "hasChild":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasChild":Z
    goto/16 :goto_0

    .line 260
    .local v0, "childPage":Landroid/view/View;
    :cond_2
    iget v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    if-ne v5, v9, :cond_3

    .line 261
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$layout;->servicebox_music_page_expand:I

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "childPage":Landroid/view/View;
    goto :goto_1

    .line 263
    .local v0, "childPage":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$layout;->servicebox_music_page_big:I

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "childPage":Landroid/view/View;
    goto :goto_1

    .line 282
    :cond_4
    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsBigView:Z

    if-eqz v5, :cond_5

    .line 283
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 284
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x1

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 288
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private closeWindow()V
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mDismissTarnsitionListenerAdapter:Landroid/transition/Transition$TransitionListenerAdapter;

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->attachClockPage(Landroid/transition/Transition$TransitionListener;)V

    .line 246
    return-void

    .line 249
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    const/4 v3, 0x0

    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 439
    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 440
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 441
    return-object v0

    .line 438
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v3
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/16 v3, 0x55

    .line 297
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_appinfo:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    .line 298
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_title:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    .line 299
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_artist:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    .line 300
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_cover:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    .line 301
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_lyrics:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    .line 302
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_prev_btn:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    .line 303
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_play_btn:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    .line 304
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_pause_btn:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    .line 305
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_next_btn:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    .line 307
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 308
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 309
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 310
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    const/16 v2, 0x58

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    invoke-direct {v1, p0, v3}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    invoke-direct {v1, p0, v3}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    const/16 v2, 0x57

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_2
    return-void
.end method

.method private updateViewToPause()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xfa

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 353
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateViewToPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 360
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 360
    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 366
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 352
    return-void
.end method

.method private updateViewToPlay()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0xfa

    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 331
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateViewToPlay()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 342
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 342
    const/4 v1, 0x0

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 343
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 330
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    .line 175
    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 173
    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 216
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->closeWindow()V

    .line 218
    const/4 v0, 0x1

    return v0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string/jumbo v0, "servicebox_music"

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->addCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;)V

    .line 232
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttachedToWindow() mIsReserved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsReserved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsReserved:Z

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsReserved:Z

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->attachClockPage(Landroid/transition/Transition$TransitionListener;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->removeCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;)V

    .line 240
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    .line 130
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    .line 127
    return-void
.end method

.method public refreshViews()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 8
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    .line 374
    if-eqz p1, :cond_4

    .line 375
    sget-object v5, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMetadata : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "android.media.metadata.TITLE"

    invoke-virtual {p1, v7}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 376
    const-string/jumbo v7, " - "

    .line 375
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 376
    const-string/jumbo v7, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v7}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string/jumbo v5, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "appName":Ljava/lang/String;
    const-string/jumbo v5, "android.media.metadata.TITLE"

    invoke-virtual {p1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v5, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "artist":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 383
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 387
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 391
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 395
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 396
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_5

    .line 397
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 404
    const-string/jumbo v3, ""

    .line 405
    .local v3, "lyrics":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "artist":Ljava/lang/String;
    .end local v3    # "lyrics":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_4
    return-void

    .line 399
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v1    # "artist":Ljava/lang/String;
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->lock_music_player_img_default_cover:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPageType(IZ)V
    .locals 3
    .param p1, "pageType"    # I
    .param p2, "isReserved"    # Z

    .prologue
    .line 160
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageType() pageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    if-eq v0, p1, :cond_1

    .line 162
    iput p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    .line 164
    if-nez p2, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->attachClockPage(Landroid/transition/Transition$TransitionListener;)V

    .line 168
    :cond_0
    iput-boolean p2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsReserved:Z

    .line 159
    :cond_1
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 4
    .param p1, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 197
    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 200
    .local v0, "lastState":I
    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 201
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPlaybackState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->updateViewToPlay()V

    .line 196
    :cond_1
    :goto_1
    return-void

    .line 199
    .end local v0    # "lastState":I
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "lastState":I
    goto :goto_0

    .line 207
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->updateViewToPause()V

    goto :goto_1
.end method

.method public updateChildViewsLook()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
