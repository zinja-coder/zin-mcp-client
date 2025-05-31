.class public interface abstract Lcom/badlogic/gdx/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract flush()V
.end method

.method public abstract get()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;)F
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInteger(Ljava/lang/String;)I
.end method

.method public abstract getInteger(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;)J
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract put(Ljava/util/Map;)Lcom/badlogic/gdx/Preferences;
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
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;
.end method

.method public abstract putFloat(Ljava/lang/String;F)Lcom/badlogic/gdx/Preferences;
.end method

.method public abstract putInteger(Ljava/lang/String;I)Lcom/badlogic/gdx/Preferences;
.end method

.method public abstract putLong(Ljava/lang/String;J)Lcom/badlogic/gdx/Preferences;
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
