.class final Lcom/android/settings/users/UserPreference$1;
.super Ljava/lang/Object;
.source "UserPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/users/UserPreference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I
    .locals 3
    .param p1, "p1"    # Lcom/android/settings/users/UserPreference;
    .param p2, "p2"    # Lcom/android/settings/users/UserPreference;

    .prologue
    .line 45
    invoke-static {p1}, Lcom/android/settings/users/UserPreference;->-wrap0(Lcom/android/settings/users/UserPreference;)I

    move-result v0

    .line 46
    .local v0, "sn1":I
    invoke-static {p2}, Lcom/android/settings/users/UserPreference;->-wrap0(Lcom/android/settings/users/UserPreference;)I

    move-result v1

    .line 47
    .local v1, "sn2":I
    if-ge v0, v1, :cond_0

    .line 48
    const/4 v2, -0x1

    return v2

    .line 49
    :cond_0
    if-le v0, v1, :cond_1

    .line 50
    const/4 v2, 0x1

    return v2

    .line 52
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lcom/android/settings/users/UserPreference;

    .end local p1    # "p1":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/users/UserPreference;

    .end local p2    # "p2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/users/UserPreference$1;->compare(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I

    move-result v0

    return v0
.end method
