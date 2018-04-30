.class final Landroid/support/v13/view/inputmethod/EditorInfoCompat$BaseEditorInfoCompatImpl;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"

# interfaces
.implements Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/inputmethod/EditorInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BaseEditorInfoCompatImpl"
.end annotation


# static fields
.field private static CONTENT_MIME_TYPES_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    sput-object v0, Landroid/support/v13/view/inputmethod/EditorInfoCompat$BaseEditorInfoCompatImpl;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v13/view/inputmethod/EditorInfoCompat$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v13/view/inputmethod/EditorInfoCompat$BaseEditorInfoCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->access$000()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroid/support/v13/view/inputmethod/EditorInfoCompat$BaseEditorInfoCompatImpl;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->access$000()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v1, Landroid/support/v13/view/inputmethod/EditorInfoCompat$BaseEditorInfoCompatImpl;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
