.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1208
    const-string/jumbo v2, "phone_language"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    :cond_0
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1213
    const-string/jumbo v2, "phone_language"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_1
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    .line 1219
    .local v1, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 1222
    const-string/jumbo v2, "key_user_dictionary_settings"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    :cond_2
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1226
    const-string/jumbo v2, "spellcheckers_settings"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    const-string/jumbo v2, "key_user_dictionary_settings"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_3
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v10, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    const v19, 0x7f0b159a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 992
    .local v16, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 993
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 994
    .local v15, "localeNames":Ljava/lang/String;
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 995
    .local v9, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "phone_language"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 996
    const v19, 0x7f0b159c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 997
    const-string/jumbo v19, "com.android.settings.localepicker.LocaleListEditor"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 998
    iput-object v15, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 999
    iput-object v15, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1000
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1001
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v15    # "localeNames":Ljava/lang/String;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1007
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1008
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "spellcheckers_settings"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1009
    const v19, 0x7f0b1831

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1010
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1011
    const v19, 0x7f0b1918

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1012
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 1016
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1017
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "key_user_dictionary_settings"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1018
    const v19, 0x7f0b15c2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1019
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1020
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v8

    .line 1038
    .local v8, "immValues":Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v8}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 1040
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, "currImeName":Ljava/lang/String;
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1042
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "current_input_method"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1043
    const v19, 0x7f0b15da

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1044
    iput-object v2, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1045
    iput-object v2, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1046
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1047
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    const-string/jumbo v19, "input_method"

    .line 1050
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    .line 1091
    .local v12, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const-string/jumbo v19, "input"

    .line 1090
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/input/InputManager;

    .line 1092
    .local v11, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v5, 0x0

    .line 1094
    .local v5, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v4

    .line 1095
    .local v4, "devices":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_5

    .line 1096
    aget v19, v4, v6

    invoke-static/range {v19 .. v19}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 1097
    .local v3, "device":Landroid/view/InputDevice;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1101
    const/4 v5, 0x1

    .line 1103
    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    .line 1105
    .local v7, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v11, v7}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v14

    .line 1106
    .local v14, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 1107
    invoke-virtual {v11, v14}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v13

    .line 1110
    .local v13, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    if-eqz v13, :cond_4

    .line 1111
    invoke-virtual {v13}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1116
    .local v17, "summary":Ljava/lang/String;
    :goto_2
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1117
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1118
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1119
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1120
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1121
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1122
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    .end local v7    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v13    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v14    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v17    # "summary":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1107
    .restart local v7    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v14    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 1113
    .restart local v13    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_4
    const v19, 0x7f0b15c0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "summary":Ljava/lang/String;
    goto :goto_2

    .line 1125
    .end local v3    # "device":Landroid/view/InputDevice;
    .end local v7    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v13    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v14    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v17    # "summary":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    .line 1127
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1128
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "builtin_keyboard_settings"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1130
    const v19, 0x7f0b15e7

    .line 1129
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1131
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1132
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_6
    new-instance v18, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 1137
    .local v18, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v18 .. v18}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    .line 1138
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1139
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "tts_settings"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1140
    const v19, 0x7f0b0081

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1141
    const-string/jumbo v19, "com.android.settings.tts.TextToSpeechSettings"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 1142
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1143
    const v19, 0x7f0b191a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1144
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_7
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1149
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "pointer_settings_category"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1150
    const v19, 0x7f0b15b8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1151
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1152
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1155
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "pointer_speed"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1156
    const v19, 0x7f0b15b9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1157
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1158
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap1()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1162
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1163
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "vibrate_input_devices"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1164
    const v19, 0x7f0b15bb

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1165
    const v19, 0x7f0b15bc

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1166
    const v19, 0x7f0b15bc

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1167
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1168
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_8
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1175
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "Virtual_keyboard_settings"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1176
    const v19, 0x7f0b15ad

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1177
    const-string/jumbo v19, "com.android.settings.inputmethod.VirtualKeyboardFragment"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 1178
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1179
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1183
    .restart local v9    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v19, "Physical_keyboard_settings"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1184
    const v19, 0x7f0b15b1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1185
    const-string/jumbo v19, "com.android.settings.inputmethod.PhysicalKeyboardFragment"

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 1186
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1187
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    return-object v10
.end method
