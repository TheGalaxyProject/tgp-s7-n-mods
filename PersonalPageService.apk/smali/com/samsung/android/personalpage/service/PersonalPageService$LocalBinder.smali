.class public Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;
.super Landroid/os/Binder;
.source "PersonalPageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/PersonalPageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/personalpage/service/PersonalPageService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    return-object v0
.end method
