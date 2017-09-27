.class Lcom/android/systemui/tuner/NightModeFragment$2;
.super Ljava/lang/Object;
.source "NightModeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/NightModeFragment;->postCalculateDisabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/NightModeFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NightModeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/NightModeFragment;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/tuner/NightModeFragment$2;->this$0:Lcom/android/systemui/tuner/NightModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeFragment$2;->this$0:Lcom/android/systemui/tuner/NightModeFragment;

    invoke-static {v0}, Lcom/android/systemui/tuner/NightModeFragment;->-wrap0(Lcom/android/systemui/tuner/NightModeFragment;)V

    .line 148
    return-void
.end method
