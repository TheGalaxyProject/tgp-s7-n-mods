.class Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$1;
.super Ljava/lang/Object;
.source "AllAppPermissionsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/preference/Preference;Landroid/preference/Preference;)I
    .locals 6
    .param p1, "lhs"    # Landroid/preference/Preference;
    .param p2, "rhs"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 148
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "lKey":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "rKey":Ljava/lang/String;
    const-string/jumbo v4, "other_perms"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    return v3

    .line 152
    :cond_0
    const-string/jumbo v4, "other_perms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    return v2

    .line 154
    :cond_1
    invoke-static {v0}, Lcom/android/packageinstaller/permission/utils/Utils;->isModernPermissionGroup(Ljava/lang/String;)Z

    move-result v4

    .line 155
    invoke-static {v1}, Lcom/android/packageinstaller/permission/utils/Utils;->isModernPermissionGroup(Ljava/lang/String;)Z

    move-result v5

    .line 154
    if-eq v4, v5, :cond_3

    .line 156
    invoke-static {v0}, Lcom/android/packageinstaller/permission/utils/Utils;->isModernPermissionGroup(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 147
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/preference/Preference;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$1;->compare(Landroid/preference/Preference;Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method
