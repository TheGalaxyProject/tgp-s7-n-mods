.class Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;
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

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v0

    const-string/jumbo v1, "pref_pp_normal_off_disclaimer_noti"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setPreferences(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap4(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    return-void
.end method
