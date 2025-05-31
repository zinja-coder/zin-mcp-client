.class public Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;
.super Ljava/lang/Object;
.source "DecalBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private final groupList:Lcom/badlogic/gdx/utils/SortedIntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private final groupPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final usedGroups:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private vertices:[F


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "groupStrategy"    # Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .prologue
    const/16 v1, 0x10

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SortedIntList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    .line 74
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->initialize(I)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->setGroupStrategy(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 1
    .param p1, "groupStrategy"    # Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .prologue
    .line 70
    const/16 v0, 0x3e8

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;-><init>(ILcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V

    .line 71
    return-void
.end method

.method private render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/utils/Array;)V
    .locals 8
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "decals":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    const/4 v3, 0x0

    .line 151
    .local v3, "lastMaterial":Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
    const/4 v2, 0x0

    .line 152
    .local v2, "idx":I
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .line 153
    .local v0, "decal":Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 154
    :cond_1
    if-lez v2, :cond_2

    .line 155
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 156
    const/4 v2, 0x0

    .line 158
    :cond_2
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->set()V

    .line 159
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    .line 161
    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->update()V

    .line 162
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    array-length v7, v7

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    array-length v4, v4

    add-int/2addr v2, v4

    .line 165
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    array-length v4, v4

    if-ne v2, v4, :cond_0

    .line 166
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 167
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    .end local v0    # "decal":Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    :cond_4
    if-lez v2, :cond_5

    .line 172
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 174
    :cond_5
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)V
    .locals 3
    .param p1, "decal"    # Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->decideGroup(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I

    move-result v0

    .line 117
    .local v0, "groupIndex":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/SortedIntList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 118
    .local v1, "targetGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    if-nez v1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "targetGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 120
    .restart local v1    # "targetGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 121
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 122
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/utils/SortedIntList;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method protected clear()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SortedIntList;->clear()V

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 189
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->clear()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 197
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->render()V

    .line 130
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->clear()V

    .line 131
    return-void
.end method

.method protected flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V
    .locals 4
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "verticesPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    invoke-virtual {v0, v1, v3, p2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v1, 0x4

    div-int/lit8 v2, p2, 0x4

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 182
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public initialize(I)V
    .locals 14
    .param p1, "size"    # I

    .prologue
    .line 88
    mul-int/lit8 v0, p1, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const/4 v2, 0x0

    mul-int/lit8 v3, p1, 0x4

    mul-int/lit8 v4, p1, 0x6

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v9, 0x0

    new-instance v10, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v11, 0x1

    const/4 v12, 0x3

    const-string v13, "a_position"

    invoke-direct {v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v10, v5, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v11, 0x4

    const/4 v12, 0x4

    const-string v13, "a_color"

    invoke-direct {v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v10, v5, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v11, 0x10

    const/4 v12, 0x2

    const-string v13, "a_texCoord0"

    invoke-direct {v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v10, v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 94
    mul-int/lit8 v0, p1, 0x6

    new-array v7, v0, [S

    .line 95
    .local v7, "indices":[S
    const/4 v8, 0x0

    .line 96
    .local v8, "v":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_0

    .line 97
    int-to-short v0, v8

    aput-short v0, v7, v6

    .line 98
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v1, v8, 0x2

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 99
    add-int/lit8 v0, v6, 0x2

    add-int/lit8 v1, v8, 0x1

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 100
    add-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, v8, 0x1

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 101
    add-int/lit8 v0, v6, 0x4

    add-int/lit8 v1, v8, 0x2

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 102
    add-int/lit8 v0, v6, 0x5

    add-int/lit8 v1, v8, 0x3

    int-to-short v1, v1

    aput-short v1, v7, v0

    .line 96
    add-int/lit8 v6, v6, 0x6

    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 105
    return-void
.end method

.method protected render()V
    .locals 6

    .prologue
    .line 135
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->beforeGroups()V

    .line 136
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SortedIntList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 137
    .local v0, "group":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;>;"
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v5, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    iget-object v3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->beforeGroup(ILcom/badlogic/gdx/utils/Array;)V

    .line 138
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v4, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->getGroupShader(I)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    .line 139
    .local v2, "shader":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    iget-object v3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/utils/Array;)V

    .line 140
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v4, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->afterGroup(I)V

    goto :goto_0

    .line 142
    .end local v0    # "group":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;>;"
    .end local v2    # "shader":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->afterGroups()V

    .line 143
    return-void
.end method

.method public setGroupStrategy(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 0
    .param p1, "groupStrategy"    # Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .line 82
    return-void
.end method
