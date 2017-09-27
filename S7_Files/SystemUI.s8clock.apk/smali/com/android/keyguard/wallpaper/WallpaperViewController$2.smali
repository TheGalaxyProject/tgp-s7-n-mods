.class Lcom/android/keyguard/wallpaper/WallpaperViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/WallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/WallpaperViewController;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onBootCompleted()V

    .line 107
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onUserSwitching(I)V

    .line 104
    return-void
.end method
