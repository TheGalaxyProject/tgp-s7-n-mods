.class public Lcom/samsung/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/TypefaceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypefaceSortByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/settings/flipfont/Typeface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/flipfont/Typeface;Lcom/samsung/android/settings/flipfont/Typeface;)I
    .locals 2
    .param p1, "o1"    # Lcom/samsung/android/settings/flipfont/Typeface;
    .param p2, "o2"    # Lcom/samsung/android/settings/flipfont/Typeface;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/settings/flipfont/Typeface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/settings/flipfont/Typeface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Lcom/samsung/android/settings/flipfont/Typeface;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lcom/samsung/android/settings/flipfont/Typeface;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;->compare(Lcom/samsung/android/settings/flipfont/Typeface;Lcom/samsung/android/settings/flipfont/Typeface;)I

    move-result v0

    return v0
.end method
