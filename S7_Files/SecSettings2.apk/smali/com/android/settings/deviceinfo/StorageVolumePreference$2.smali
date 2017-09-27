.class Lcom/android/settings/deviceinfo/StorageVolumePreference$2;
.super Ljava/lang/Object;
.source "StorageVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageVolumePreference;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 166
    .local v0, "action":I
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
