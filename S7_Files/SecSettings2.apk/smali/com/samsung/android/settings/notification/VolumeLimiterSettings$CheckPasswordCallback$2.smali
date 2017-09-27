.class Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$2;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->showCheckPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$2;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$2;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->-wrap0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    .line 419
    return-void
.end method
