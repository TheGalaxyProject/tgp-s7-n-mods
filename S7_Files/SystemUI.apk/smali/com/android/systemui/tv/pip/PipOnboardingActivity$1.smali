.class Lcom/android/systemui/tv/pip/PipOnboardingActivity$1;
.super Ljava/lang/Object;
.source "PipOnboardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tv/pip/PipOnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipOnboardingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipOnboardingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipOnboardingActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity$1;->this$0:Lcom/android/systemui/tv/pip/PipOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity$1;->this$0:Lcom/android/systemui/tv/pip/PipOnboardingActivity;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->finish()V

    .line 45
    return-void
.end method
