.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
.super Ljava/lang/Object;
.source "Skin.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;
    }
.end annotation


# instance fields
.field atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field resources:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 3
    .param p1, "skinFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".atlas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 69
    .local v0, "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 71
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 1
    .param p1, "skinFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 80
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 81
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 1
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 88
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 89
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 90
    return-void
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;
    .locals 5
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-static {p0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getMethods(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object v2

    .line 503
    .local v2, "methods":[Lcom/badlogic/gdx/utils/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, v2

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 504
    aget-object v1, v2, v0

    .line 505
    .local v1, "method":Lcom/badlogic/gdx/utils/reflect/Method;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    .end local v1    # "method":Lcom/badlogic/gdx/utils/reflect/Method;
    :goto_1
    return-object v1

    .line 503
    .restart local v1    # "method":Lcom/badlogic/gdx/utils/reflect/Method;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "method":Lcom/badlogic/gdx/utils/reflect/Method;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 112
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 115
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "resource cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 118
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 119
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .end local v0    # "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 120
    .restart local v0    # "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 6
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    .line 104
    .local v3, "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 105
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 106
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    const-class v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v4, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 5

    .prologue
    .line 389
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->dispose()V

    .line 390
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 391
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 392
    .local v3, "resource":Ljava/lang/Object;
    instance-of v4, v3, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/badlogic/gdx/utils/Disposable;

    .end local v3    # "resource":Ljava/lang/Object;
    invoke-interface {v3}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_0

    .line 394
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "resource"    # Ljava/lang/Object;

    .prologue
    .line 297
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "style cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 299
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 300
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->findKey(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
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
    .line 136
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "type cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_1
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 148
    :cond_2
    :goto_0
    return-object v0

    .line 140
    :cond_3
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-ne p2, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_4
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-ne p2, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_5
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-ne p2, v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 145
    .local v1, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_7

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_7
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "resource":Ljava/lang/Object;
    if-nez v0, :cond_2

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAll(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object v0
.end method

.method public getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    const-class v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 254
    .local v1, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 291
    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .local v2, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    return-object v2

    .line 256
    .end local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_0
    const-class v7, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 257
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v1, :cond_1

    move-object v2, v1

    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_0

    .line 261
    .end local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    .line 262
    .local v6, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    instance-of v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v7, :cond_9

    .line 263
    move-object v0, v6

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v4, v0

    .line 264
    .local v4, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    if-eqz v7, :cond_4

    .line 265
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v4    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .restart local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_1
    if-nez v2, :cond_8

    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    .end local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v6    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_2
    if-nez v1, :cond_2

    .line 275
    const-class v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 276
    .local v3, "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-eqz v3, :cond_6

    .line 277
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    .line 288
    .end local v3    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_2
    :goto_3
    instance-of v7, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v7, :cond_3

    move-object v7, v1

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    invoke-virtual {v7, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    .line 290
    :cond_3
    const-class v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v2, v1

    .line 291
    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_0

    .line 266
    .end local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v4    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .restart local v6    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_4
    :try_start_2
    iget-boolean v7, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-nez v7, :cond_5

    iget v7, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v8, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v7, v8, :cond_5

    iget v7, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v8, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-eq v7, v8, :cond_9

    .line 267
    :cond_5
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_1

    .line 279
    .end local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v4    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v6    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v3    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_6
    const-class v7, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 280
    .local v5, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    if-eqz v5, :cond_7

    .line 281
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-direct {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_3

    .line 283
    :cond_7
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No Drawable, NinePatch, TextureRegion, Texture, or Sprite registered with name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 270
    .end local v3    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v5    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :catch_0
    move-exception v7

    goto :goto_2

    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v6    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :catch_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_2

    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_8
    move-object v1, v2

    .end local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_2

    :cond_9
    move-object v2, v1

    .end local v1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v2    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_1
.end method

.method public getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method protected getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
    .locals 4
    .param p1, "skinFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 397
    move-object v1, p0

    .line 399
    .local v1, "skin":Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 407
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->setTypeName(Ljava/lang/String;)V

    .line 408
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->setUsePrototypes(Z)V

    .line 410
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;

    invoke-direct {v3, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 437
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 472
    const-class v2, Lcom/badlogic/gdx/graphics/Color;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 485
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 498
    return-object v0
.end method

.method public getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    const-class v3, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 208
    .local v9, "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-eqz v9, :cond_0

    move-object v1, v9

    .line 222
    .end local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :goto_0
    return-object v9

    .line 211
    .restart local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 212
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    instance-of v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v3, :cond_2

    .line 213
    move-object v0, v2

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v3, v0

    iget-object v10, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 214
    .local v10, "splits":[I
    if-eqz v10, :cond_2

    .line 215
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    const/4 v5, 0x2

    aget v5, v10, v5

    const/4 v6, 0x3

    aget v6, v10, v6

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .local v1, "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v3, v0

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    .line 217
    .local v8, "pads":[I
    if-eqz v8, :cond_1

    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    const/4 v5, 0x2

    aget v5, v8, v5

    const/4 v6, 0x3

    aget v6, v8, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setPadding(IIII)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v9, v1

    .line 220
    .end local v1    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v8    # "pads":[I
    .end local v10    # "splits":[I
    .restart local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_2
    if-nez v9, :cond_3

    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    .end local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .restart local v1    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :goto_1
    :try_start_3
    const-class v3, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v9, v1

    .line 222
    .end local v1    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .restart local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    goto :goto_0

    .line 223
    .end local v2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :catch_0
    move-exception v7

    move-object v1, v9

    .line 224
    .end local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .restart local v1    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .local v7, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_2
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No NinePatch, TextureRegion, or Texture registered with name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    .end local v7    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v1    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .restart local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_3
    move-object v1, v9

    .end local v9    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .restart local v1    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    goto :goto_1
.end method

.method public getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 182
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 188
    .end local v0    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .local v1, "region":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 184
    .end local v1    # "region":Ljava/lang/Object;
    .restart local v0    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_0
    const-class v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Texture;

    .line 185
    .local v2, "texture":Lcom/badlogic/gdx/graphics/Texture;
    if-nez v2, :cond_1

    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No TextureRegion or Texture registered with name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .end local v0    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 187
    .restart local v0    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v1, v0

    .line 188
    .restart local v1    # "region":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    const-class v6, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 233
    .local v3, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 244
    .end local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .local v4, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :goto_0
    return-object v4

    .line 236
    .end local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 237
    .local v5, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    instance-of v6, v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v6, :cond_3

    .line 238
    move-object v0, v5

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v2, v0

    .line 239
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-boolean v6, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-nez v6, :cond_1

    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v7, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v6, v7, :cond_1

    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v7, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-eq v6, v7, :cond_3

    .line 240
    :cond_1
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    invoke-direct {v4, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :goto_1
    if-nez v4, :cond_2

    :try_start_1
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .end local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :goto_2
    :try_start_2
    const-class v6, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v3

    .line 244
    .end local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    goto :goto_0

    .line 245
    .end local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .end local v5    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_3
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No NinePatch, TextureRegion, or Texture registered with name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v5    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    goto :goto_3

    .end local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :cond_2
    move-object v3, v4

    .end local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    goto :goto_2

    :cond_3
    move-object v4, v3

    .end local v3    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .restart local v4    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    goto :goto_1
.end method

.method public getTiledDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    .line 195
    .local v0, "tiled":Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 200
    .end local v0    # "tiled":Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .local v1, "tiled":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 197
    .end local v1    # "tiled":Ljava/lang/Object;
    .restart local v0    # "tiled":Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    .end local v0    # "tiled":Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 198
    .restart local v0    # "tiled":Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setName(Ljava/lang/String;)V

    .line 199
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v1, v0

    .line 200
    .restart local v1    # "tiled":Ljava/lang/Object;
    goto :goto_0
.end method

.method public has(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 161
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 4
    .param p1, "skinFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v1, v2, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 320
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    .end local p1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 322
    :goto_0
    return-object v0

    .line 321
    .restart local p1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    .end local p1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;)V

    goto :goto_0

    .line 322
    .restart local p1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    .end local p1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V

    goto :goto_0

    .line 323
    .restart local p1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to copy, unknown drawable type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "r"    # F
    .param p3, "g"    # F
    .param p4, "b"    # F
    .param p5, "a"    # F

    .prologue
    .line 328
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 5
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 334
    instance-of v2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 335
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    move-result-object v1

    .line 343
    .local v1, "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    instance-of v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 344
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    .line 345
    .local v0, "named":Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
    instance-of v2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v2, :cond_4

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    .end local p1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    .line 351
    .end local v0    # "named":Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
    :cond_0
    :goto_1
    return-object v1

    .line 336
    .end local v1    # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local p1    # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_1
    instance-of v2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 337
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    move-result-object v1

    .restart local v1    # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_0

    .line 338
    .end local v1    # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_2
    instance-of v2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 339
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    move-result-object v1

    .restart local v1    # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_0

    .line 341
    .end local v1    # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_3
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to copy, unknown drawable type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    .restart local v0    # "named":Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
    .restart local v1    # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public newDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Ljava/lang/String;FFFF)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # F
    .param p3, "g"    # F
    .param p4, "b"    # F
    .param p5, "a"    # F

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
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
    .line 152
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "type cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 155
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 156
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 126
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 128
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public setEnabled(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 7
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "enabled"    # Z

    .prologue
    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getStyle"

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object v1

    .line 361
    .local v1, "method":Lcom/badlogic/gdx/utils/reflect/Method;
    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Lcom/badlogic/gdx/utils/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 369
    .local v3, "style":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->find(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-disabled"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setStyle"

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_0

    .line 377
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, p1, v4}, Lcom/badlogic/gdx/utils/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v4

    goto :goto_0

    .line 365
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "style":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 366
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    .line 371
    .end local v0    # "ignored":Ljava/lang/Exception;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "style":Ljava/lang/Object;
    :cond_2
    const-string v4, "-disabled"

    goto :goto_1
.end method
