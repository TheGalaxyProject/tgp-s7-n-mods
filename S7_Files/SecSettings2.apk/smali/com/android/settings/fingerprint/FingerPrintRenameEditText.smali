.class public Lcom/android/settings/fingerprint/FingerPrintRenameEditText;
.super Landroid/widget/EditText;
.source "FingerPrintRenameEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintRenameEditText$ActionModeCallbackInterceptor;,
        Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field gestureDetector:Landroid/view/GestureDetector;

.field private isDoubletap:Z


# direct methods
.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isDoubletap:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    const-string/jumbo v0, "FpstFingerPrintRenameEditText"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->TAG:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->gestureDetector:Landroid/view/GestureDetector;

    .line 57
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string/jumbo v0, "FpstFingerPrintRenameEditText"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->context:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->gestureDetector:Landroid/view/GestureDetector;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const-string/jumbo v0, "FpstFingerPrintRenameEditText"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->TAG:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->context:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->gestureDetector:Landroid/view/GestureDetector;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->init()V

    .line 69
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$ActionModeCallbackInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$ActionModeCallbackInterceptor;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText$ActionModeCallbackInterceptor;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setLongClickable(Z)V

    .line 82
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isDoubletap:Z

    .line 78
    return-void
.end method

.method private setInsertionDisabled()V
    .locals 7

    .prologue
    .line 143
    :try_start_0
    const-string/jumbo v5, "FpstFingerPrintRenameEditText"

    const-string/jumbo v6, "setInsertionDisabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-class v5, Landroid/widget/TextView;

    const-string/jumbo v6, "mEditor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 145
    .local v1, "editorField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "editorObject":Ljava/lang/Object;
    const-string/jumbo v5, "android.widget.Editor"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    .local v0, "editorClass":Ljava/lang/Class;
    const-string/jumbo v5, "mInsertionControllerEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 150
    .local v4, "mInsertionControllerEnabledField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 151
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "editorClass":Ljava/lang/Class;
    .end local v1    # "editorField":Ljava/lang/reflect/Field;
    .end local v2    # "editorObject":Ljava/lang/Object;
    .end local v4    # "mInsertionControllerEnabledField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v3

    .local v3, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method canPaste()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setInsertionDisabled()V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isDoubletap:Z

    if-nez v1, :cond_1

    .line 109
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 115
    .end local v0    # "ret":Z
    :goto_0
    return v0

    .line 111
    .restart local v0    # "ret":Z
    :cond_1
    const-string/jumbo v1, "FpstFingerPrintRenameEditText"

    const-string/jumbo v2, "isDoubletap is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isDoubletap:Z

    goto :goto_0
.end method
