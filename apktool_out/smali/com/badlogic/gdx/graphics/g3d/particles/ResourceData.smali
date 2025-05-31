.class public Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;
.super Ljava/lang/Object;
.source "ResourceData.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializable;"
    }
.end annotation


# instance fields
.field private currentLoadIndex:I

.field private data:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;",
            ">;"
        }
    .end annotation
.end field

.field public resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field sharedAssets:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueData:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 131
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->uniqueData:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 133
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->data:Lcom/badlogic/gdx/utils/Array;

    .line 134
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->currentLoadIndex:I

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    .local p1, "resource":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    .line 141
    return-void
.end method


# virtual methods
.method public createSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    .locals 2

    .prologue
    .line 168
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 169
    .local v0, "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->data:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 170
    return-object v0
.end method

.method public createSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 176
    .local v0, "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->uniqueData:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Key already used, data must be unique, use a different key"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->uniqueData:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-object v0
.end method

.method getAssetData(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;)I"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    const/4 v1, 0x0

    .line 145
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    .line 146
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    .end local v0    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 149
    .restart local v0    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_0

    .line 151
    .end local v0    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getAssetDescriptors()Lcom/badlogic/gdx/utils/Array;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 156
    .local v1, "descriptors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    .line 157
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;
    new-instance v3, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    .end local v0    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;
    :cond_0
    return-object v1
.end method

.method public getAssets()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    .locals 3

    .prologue
    .line 184
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->data:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->currentLoadIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->currentLoadIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    return-object v0
.end method

.method public getSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 189
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->uniqueData:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    return-object v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 202
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    const-string v3, "unique"

    const-class v4, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, v3, v4, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->uniqueData:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 203
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->uniqueData:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 204
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;>;"
    iget-object v3, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    iput-object p0, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->resources:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    goto :goto_0

    .line 207
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;>;"
    :cond_0
    const-string v3, "data"

    const-class v4, Lcom/badlogic/gdx/utils/Array;

    const-class v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    invoke-virtual {p1, v3, v4, v5, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->data:Lcom/badlogic/gdx/utils/Array;

    .line 208
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->data:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    .line 209
    .local v2, "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    iput-object p0, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->resources:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    goto :goto_1

    .line 212
    .end local v2    # "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    const-string v3, "assets"

    const-class v5, [Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    invoke-virtual {p1, v3, v5, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    .line 213
    const-string v3, "resource"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 194
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<TT;>;"
    const-string v0, "unique"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->uniqueData:Lcom/badlogic/gdx/utils/ObjectMap;

    const-class v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 195
    const-string v0, "data"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->data:Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 196
    const-string v0, "assets"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    const-class v2, [Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 197
    const-string v0, "resource"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 198
    return-void
.end method
