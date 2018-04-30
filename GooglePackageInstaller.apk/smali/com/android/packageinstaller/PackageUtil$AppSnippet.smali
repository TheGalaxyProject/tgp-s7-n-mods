.class public Lcom/android/packageinstaller/PackageUtil$AppSnippet;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSnippet"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
