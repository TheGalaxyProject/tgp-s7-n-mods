.class public Lcom/android/settings/Utils$EmojiInputFilter;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiInputFilter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 7097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7098
    iput-object p1, p0, Lcom/android/settings/Utils$EmojiInputFilter;->mContext:Landroid/content/Context;

    .line 7097
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 7104
    iget-object v0, p0, Lcom/android/settings/Utils$EmojiInputFilter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p4, p5, p6}, Lcom/android/settings/Utils;->-wrap0(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
