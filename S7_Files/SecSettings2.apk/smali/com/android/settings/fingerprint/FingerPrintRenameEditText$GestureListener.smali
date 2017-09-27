.class Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FingerPrintRenameEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 134
    const-string/jumbo v0, "FpstFingerPrintRenameEditText"

    const-string/jumbo v1, "Doubletap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->-set0(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Z)Z

    .line 137
    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method
