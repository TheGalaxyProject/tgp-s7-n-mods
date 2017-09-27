.class public Lcom/android/settingslib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "gmtOffsetString"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "offsetMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "gmt"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-object v0
.end method

.method private static getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    .line 214
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "ZZZZ"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 216
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 220
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 222
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 221
    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 223
    return-object v2

    .line 220
    .end local v3    # "isRtl":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 222
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1
.end method

.method public static getTimeZoneOffsetAndName(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 57
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1, p0, p1}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "gmtString":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    .line 59
    .local v2, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {v2, p0, p1}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "zoneNameString":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 61
    return-object v0

    .line 65
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "names"    # Landroid/icu/text/TimeZoneNames;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 207
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 209
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 208
    .end local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_0
.end method

.method public static getZonesList(Landroid/content/Context;)Ljava/util/List;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 70
    .local v12, "locale":Ljava/util/Locale;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 71
    .local v14, "now":Ljava/util/Date;
    invoke-static {v12}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v20

    .line 89
    .local v20, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/datetime/ZoneGetter;->readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;

    move-result-object v18

    .line 92
    .local v18, "olsonIdsToDisplayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v24

    .line 93
    .local v24, "zoneCount":I
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 94
    .local v17, "olsonIdsToDisplay":[Ljava/lang/String;
    move/from16 v0, v24

    new-array v0, v0, [Ljava/util/TimeZone;

    move-object/from16 v21, v0

    .line 95
    .local v21, "timeZones":[Ljava/util/TimeZone;
    move/from16 v0, v24

    new-array v7, v0, [Ljava/lang/String;

    .line 96
    .local v7, "gmtOffsetStrings":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move/from16 v0, v24

    if-ge v8, v0, :cond_0

    .line 97
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 98
    .local v16, "olsonId":Ljava/lang/String;
    aput-object v16, v17, v8

    .line 99
    invoke-static/range {v16 .. v16}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .line 100
    .local v22, "tz":Ljava/util/TimeZone;
    aput-object v22, v21, v8

    .line 101
    move-object/from16 v0, v22

    invoke-static {v12, v0, v14}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v7, v8

    .line 96
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 105
    .end local v16    # "olsonId":Ljava/lang/String;
    .end local v22    # "tz":Ljava/util/TimeZone;
    :cond_0
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 106
    .local v10, "localZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v12}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    aget-object v16, v27, v26

    .line 107
    .restart local v16    # "olsonId":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 111
    .end local v16    # "olsonId":Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v11, "localZoneNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 113
    .local v23, "useExemplarLocationForLocalNames":Z
    const/4 v8, 0x0

    :goto_2
    move/from16 v0, v24

    if-ge v8, v0, :cond_3

    .line 114
    aget-object v16, v17, v8

    .line 115
    .restart local v16    # "olsonId":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 116
    aget-object v22, v21, v8

    .line 117
    .restart local v22    # "tz":Ljava/util/TimeZone;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "displayName":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 119
    aget-object v5, v7, v8

    .line 121
    :cond_2
    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 122
    .local v13, "nameIsUnique":Z
    if-nez v13, :cond_8

    .line 123
    const/16 v23, 0x1

    .line 130
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v13    # "nameIsUnique":Z
    .end local v16    # "olsonId":Ljava/lang/String;
    .end local v22    # "tz":Ljava/util/TimeZone;
    :cond_3
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v25, "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v8, v0, :cond_c

    .line 132
    aget-object v16, v17, v8

    .line 133
    .restart local v16    # "olsonId":Ljava/lang/String;
    aget-object v22, v21, v8

    .line 134
    .restart local v22    # "tz":Ljava/util/TimeZone;
    aget-object v6, v7, v8

    .line 136
    .local v6, "gmtOffsetString":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 137
    .local v9, "isLocalZoneId":Z
    if-eqz v9, :cond_4

    if-eqz v23, :cond_9

    :cond_4
    const/16 v19, 0x0

    .line 139
    .local v19, "preferLongName":Z
    :goto_4
    if-eqz v19, :cond_a

    .line 140
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 148
    .restart local v5    # "displayName":Ljava/lang/String;
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 149
    :cond_6
    move-object v5, v6

    .line 152
    :cond_7
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v15

    .line 154
    .local v15, "offsetMillis":I
    move-object/from16 v0, v22

    invoke-static {v0, v6, v5, v15}, Lcom/android/settingslib/datetime/ZoneGetter;->createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4

    .line 155
    .local v4, "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 113
    .end local v4    # "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "gmtOffsetString":Ljava/lang/String;
    .end local v9    # "isLocalZoneId":Z
    .end local v15    # "offsetMillis":I
    .end local v19    # "preferLongName":Z
    .end local v22    # "tz":Ljava/util/TimeZone;
    .end local v25    # "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 137
    .restart local v6    # "gmtOffsetString":Ljava/lang/String;
    .restart local v9    # "isLocalZoneId":Z
    .restart local v22    # "tz":Ljava/util/TimeZone;
    .restart local v25    # "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_9
    const/16 v19, 0x1

    goto :goto_4

    .line 142
    .restart local v19    # "preferLongName":Z
    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .restart local v5    # "displayName":Ljava/lang/String;
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 145
    :cond_b
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 157
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "gmtOffsetString":Ljava/lang/String;
    .end local v9    # "isLocalZoneId":Z
    .end local v16    # "olsonId":Ljava/lang/String;
    .end local v19    # "preferLongName":Z
    .end local v22    # "tz":Ljava/util/TimeZone;
    :cond_c
    return-object v25
.end method

.method private static readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
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
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "xrp":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/settingslib/R$xml;->timezones:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 173
    .local v4, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 176
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    .line 177
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v9, :cond_9

    .line 178
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 179
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 197
    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_2
    if-eqz v6, :cond_3

    :try_start_2
    throw v6
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 193
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 194
    .local v3, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "ZoneGetter"

    const-string/jumbo v6, "Ill-formatted timezones.xml file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v3    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    return-object v2

    .line 197
    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 180
    :cond_3
    return-object v2

    .line 182
    :cond_4
    :try_start_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 197
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_4
    if-eqz v4, :cond_5

    :try_start_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    if-eqz v6, :cond_c

    :try_start_6
    throw v6
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 195
    :catch_3
    move-exception v0

    .line 196
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "ZoneGetter"

    const-string/jumbo v6, "Unable to read timezones.xml file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 184
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_6
    :try_start_7
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "timezone"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 185
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "olsonId":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v1    # "olsonId":Ljava/lang/String;
    :cond_7
    :goto_6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v9, :cond_8

    .line 189
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_6

    .line 197
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 191
    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_8
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 197
    :cond_9
    if-eqz v4, :cond_a

    :try_start_8
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    :goto_7
    if-eqz v6, :cond_2

    :try_start_9
    throw v6

    :catch_4
    move-exception v6

    goto :goto_7

    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_5
    move-exception v7

    if-nez v6, :cond_b

    move-object v6, v7

    goto :goto_5

    :cond_b
    if-eq v6, v7, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    throw v5
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
.end method
