.class Lcom/android/settings/inputmethod/InputMethodSubtypePreference;
.super Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;
.source "InputMethodSubtypePreference.java"


# instance fields
.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p3, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setPersistent(Z)V

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setKey(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 44
    invoke-virtual {p2, p1, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 46
    .local v0, "subtypeLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "subtypeLocaleString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    iput-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 50
    iput-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    .line 40
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 53
    .local v2, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 54
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v3, :cond_1

    .line 55
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 54
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method compareTo(Landroid/preference/Preference;Ljava/text/Collator;)I
    .locals 7
    .param p1, "rhs"    # Landroid/preference/Preference;
    .param p2, "collator"    # Ljava/text/Collator;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 61
    if-ne p0, p1, :cond_0

    .line 62
    return v6

    .line 64
    :cond_0
    instance-of v3, p1, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 65
    check-cast v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    .line 66
    .local v0, "pref":Lcom/android/settings/inputmethod/InputMethodSubtypePreference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 67
    .local v1, "t0":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 68
    .local v2, "t1":Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    return v6

    .line 71
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v3, :cond_2

    .line 72
    return v4

    .line 74
    :cond_2
    iget-boolean v3, v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v3, :cond_3

    .line 75
    return v5

    .line 77
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v3, :cond_4

    .line 78
    return v4

    .line 80
    :cond_4
    iget-boolean v3, v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v3, :cond_5

    .line 81
    return v5

    .line 83
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 84
    return v5

    .line 86
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 87
    return v4

    .line 89
    :cond_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 91
    .end local v0    # "pref":Lcom/android/settings/inputmethod/InputMethodSubtypePreference;
    .end local v1    # "t0":Ljava/lang/CharSequence;
    .end local v2    # "t1":Ljava/lang/CharSequence;
    :cond_8
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v3

    return v3
.end method
