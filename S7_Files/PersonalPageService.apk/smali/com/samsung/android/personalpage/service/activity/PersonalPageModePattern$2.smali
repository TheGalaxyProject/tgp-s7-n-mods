.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;
.super Ljava/lang/Object;
.source "PersonalPageModePattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-get5(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 305
    return-void
.end method
