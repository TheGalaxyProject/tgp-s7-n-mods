.class Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;
.super Ljava/lang/Object;
.source "PrivateModeManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v1

    const-string/jumbo v2, "pref_pp_normal_on_disclaimer_noti"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setPreferences(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap5(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    return-void
.end method
