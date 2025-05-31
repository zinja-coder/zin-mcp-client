.class public Lcom/badlogic/gdx/maps/MapProperties;
.super Ljava/lang/Object;
.source "MapProperties.java"


# instance fields
.field private properties:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 87
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/maps/MapProperties;)V
    .locals 2
    .param p1, "properties"    # Lcom/badlogic/gdx/maps/MapProperties;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->putAll(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 77
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapProperties;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
