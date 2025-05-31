.class public Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;
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
    name = "AssetData"
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
.field public filename:Ljava/lang/String;

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    .line 101
    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 5
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 109
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<TT;>;"
    const-string v2, "filename"

    const-class v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    .line 110
    const-string v2, "type"

    const-class v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 104
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<TT;>;"
    const-string v0, "filename"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v0, "type"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-void
.end method
