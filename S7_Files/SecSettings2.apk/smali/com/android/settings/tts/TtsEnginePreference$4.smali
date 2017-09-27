.class Lcom/android/settings/tts/TtsEnginePreference$4;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEnginePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/tts/TtsEnginePreference;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->-wrap2(Lcom/android/settings/tts/TtsEnginePreference;Landroid/view/View;)V

    .line 197
    :cond_0
    return v1
.end method
