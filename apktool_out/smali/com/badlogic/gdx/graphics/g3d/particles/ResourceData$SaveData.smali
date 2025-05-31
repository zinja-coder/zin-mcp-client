.class public Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
.super Ljava/lang/Object;
.source "ResourceData.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveData"
.end annotation


# instance fields
.field assets:Lcom/badlogic/gdx/utils/IntArray;

.field data:Lcom/badlogic/gdx/utils/ObjectMap;
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

.field private loadIndex:I

.field protected resources:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->assets:Lcom/badlogic/gdx/utils/IntArray;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadIndex:I

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 1
    .param p1, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->assets:Lcom/badlogic/gdx/utils/IntArray;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadIndex:I

    .line 54
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->resources:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 55
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;
    .locals 5

    .prologue
    .line 71
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadIndex:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->assets:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->resources:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->assets:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadIndex:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    .line 73
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;
    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 3
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 88
    const-string v0, "data"

    const-class v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 89
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->assets:Lcom/badlogic/gdx/utils/IntArray;

    const-string v0, "indices"

    const-class v2, [I

    invoke-virtual {p1, v0, v2, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->addAll([I)V

    .line 90
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public saveAsset(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->resources:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getAssetData(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 59
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->resources:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    invoke-direct {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->resources:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->sharedAssets:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v1, -0x1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->assets:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 64
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 3
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 82
    const-string v0, "data"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    const-class v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 83
    const-string v0, "indices"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->assets:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object v1

    const-class v2, [I

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 84
    return-void
.end method
