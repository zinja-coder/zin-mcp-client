.class public Lcom/badlogic/gdx/backends/android/AndroidPreferences;
.super Ljava/lang/Object;
.source "AndroidPreferences.java"

# interfaces
.implements Lcom/badlogic/gdx/Preferences;


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 33
    return-void
.end method

.method private edit()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 147
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 155
    :cond_0
    return-void
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/util/Map;)Lcom/badlogic/gdx/Preferences;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/badlogic/gdx/Preferences;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "vals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    .local v1, "val":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;

    .line 75
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putInteger(Ljava/lang/String;I)Lcom/badlogic/gdx/Preferences;

    .line 76
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putLong(Ljava/lang/String;J)Lcom/badlogic/gdx/Preferences;

    .line 77
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    .line 78
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putFloat(Ljava/lang/String;F)Lcom/badlogic/gdx/Preferences;

    goto/16 :goto_0

    .line 80
    .end local v1    # "val":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_5
    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/badlogic/gdx/Preferences;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 60
    return-object p0
.end method

.method public putInteger(Ljava/lang/String;I)Lcom/badlogic/gdx/Preferences;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/badlogic/gdx/Preferences;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # J

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    return-void
.end method
