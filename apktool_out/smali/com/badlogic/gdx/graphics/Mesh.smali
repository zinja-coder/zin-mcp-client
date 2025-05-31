.class public Lcom/badlogic/gdx/graphics/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    }
.end annotation


# static fields
.field static final meshes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field autoBind:Z

.field final indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

.field final isVertexArray:Z

.field private final tmpV:Lcom/badlogic/gdx/math/Vector3;

.field final vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 3
    .param p1, "type"    # Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .param p2, "isStatic"    # Z
    .param p3, "maxVertices"    # I
    .param p4, "maxIndices"    # I
    .param p5, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 682
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 144
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObject:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    if-ne p1, v0, :cond_0

    .line 145
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 146
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 147
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 157
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 158
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectSubData:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    if-ne p1, v0, :cond_1

    .line 149
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 151
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;

    invoke-direct {v0, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 154
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 155
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/glutils/VertexData;Lcom/badlogic/gdx/graphics/glutils/IndexData;Z)V
    .locals 1
    .param p1, "vertices"    # Lcom/badlogic/gdx/graphics/glutils/VertexData;
    .param p2, "indices"    # Lcom/badlogic/gdx/graphics/glutils/IndexData;
    .param p3, "isVertexArray"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 682
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 80
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 81
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 82
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 84
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 85
    return-void
.end method

.method public constructor <init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "maxVertices"    # I
    .param p3, "maxIndices"    # I
    .param p4, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 682
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 114
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 115
    return-void
.end method

.method public varargs constructor <init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "maxVertices"    # I
    .param p3, "maxIndices"    # I
    .param p4, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 682
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 95
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 96
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 99
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 100
    return-void
.end method

.method public constructor <init>(ZZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1
    .param p1, "staticVertices"    # Z
    .param p2, "staticIndices"    # Z
    .param p3, "maxVertices"    # I
    .param p4, "maxIndices"    # I
    .param p5, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 682
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 128
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p1, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 129
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 132
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 133
    return-void
.end method

.method private static addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 2
    .param p0, "app"    # Lcom/badlogic/gdx/Application;
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;

    .prologue
    .line 847
    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 848
    .local v0, "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Mesh;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    .end local v0    # "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Mesh;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 849
    .restart local v0    # "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Mesh;>;"
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 850
    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    return-void
.end method

.method public static clearAllMeshes(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 866
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    return-void
.end method

.method public static create(ZLcom/badlogic/gdx/graphics/Mesh;[Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 16
    .param p0, "isStatic"    # Z
    .param p1, "base"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p2, "transformations"    # [Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 166
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    .line 167
    .local v13, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v1, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v4, v1, 0x4

    .line 168
    .local v4, "offset":I
    iget v5, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 169
    .local v5, "numComponents":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v7

    .line 170
    .local v7, "numVertices":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v1

    div-int/lit8 v3, v1, 0x4

    .line 171
    .local v3, "vertexSize":I
    mul-int v8, v7, v3

    .line 172
    .local v8, "baseSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v12

    .line 174
    .local v12, "numIndices":I
    mul-int v1, v7, v3

    move-object/from16 v0, p2

    array-length v6, v0

    mul-int/2addr v1, v6

    new-array v2, v1, [F

    .line 175
    .local v2, "vertices":[F
    move-object/from16 v0, p2

    array-length v1, v0

    mul-int/2addr v1, v12

    new-array v10, v1, [S

    .line 177
    .local v10, "indices":[S
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 179
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v9, v1, :cond_1

    .line 180
    const/4 v1, 0x0

    mul-int v6, v8, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8, v2, v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    .line 181
    aget-object v1, p2, v9

    mul-int v6, v7, v9

    invoke-static/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V

    .line 182
    if-lez v9, :cond_0

    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v12, :cond_0

    .line 183
    mul-int v1, v12, v9

    add-int/2addr v1, v11

    aget-short v6, v10, v11

    mul-int v15, v7, v9

    add-int/2addr v6, v15

    int-to-short v6, v6

    aput-short v6, v10, v1

    .line 182
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 179
    .end local v11    # "j":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 186
    :cond_1
    new-instance v14, Lcom/badlogic/gdx/graphics/Mesh;

    array-length v1, v2

    div-int/2addr v1, v3

    array-length v6, v10

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v15

    move/from16 v0, p0

    invoke-direct {v14, v0, v1, v6, v15}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 187
    .local v14, "result":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 188
    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 189
    return-object v14
.end method

.method public static create(Z[Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p0, "isStatic"    # Z
    .param p1, "meshes"    # [Lcom/badlogic/gdx/graphics/Mesh;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->create(Z[Lcom/badlogic/gdx/graphics/Mesh;[Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static create(Z[Lcom/badlogic/gdx/graphics/Mesh;[Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 23
    .param p0, "isStatic"    # Z
    .param p1, "meshes"    # [Lcom/badlogic/gdx/graphics/Mesh;
    .param p2, "transformations"    # [Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 209
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v3, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v3, v0, :cond_0

    .line 210
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v21, "Not enough transformations specified"

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v10

    .line 212
    .local v10, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v20

    .line 213
    .local v20, "vertCount":I
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v12

    .line 214
    .local v12, "idxCount":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_2

    .line 215
    aget-object v3, p1, v11

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v21, "Inconsistent VertexAttributes"

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_1
    aget-object v3, p1, v11

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v3

    add-int v20, v20, v3

    .line 218
    aget-object v3, p1, v11

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v3

    add-int/2addr v12, v3

    .line 214
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 220
    :cond_2
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v18

    .line 221
    .local v18, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v6, v3, 0x4

    .line 222
    .local v6, "offset":I
    move-object/from16 v0, v18

    iget v7, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 223
    .local v7, "numComponents":I
    iget v3, v10, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v5, v3, 0x4

    .line 225
    .local v5, "vertexSize":I
    mul-int v3, v20, v5

    new-array v4, v3, [F

    .line 226
    .local v4, "vertices":[F
    new-array v13, v12, [S

    .line 228
    .local v13, "indices":[S
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 229
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 230
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v9

    .line 231
    .local v9, "vcount":I
    if-eqz p2, :cond_3

    const/4 v3, 0x0

    aget-object v3, p2, v3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V

    .line 232
    :cond_3
    move v8, v9

    .line 233
    .local v8, "voffset":I
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v14

    .line 234
    .local v14, "ioffset":I
    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_6

    .line 235
    aget-object v17, p1, v11

    .line 236
    .local v17, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v9

    .line 237
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v15

    .line 238
    .local v15, "isize":I
    const/4 v3, 0x0

    mul-int v21, v9, v5

    mul-int v22, v8, v5

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    .line 239
    if-eqz p2, :cond_4

    .line 240
    aget-object v3, p2, v11

    invoke-static/range {v3 .. v9}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V

    .line 241
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v14}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([SI)V

    .line 242
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_5

    .line 243
    add-int v3, v14, v16

    add-int v21, v14, v16

    aget-short v21, v13, v21

    add-int v21, v21, v8

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v3

    .line 242
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 244
    :cond_5
    add-int/2addr v14, v15

    .line 245
    add-int/2addr v8, v9

    .line 234
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 248
    .end local v15    # "isize":I
    .end local v16    # "j":I
    .end local v17    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_6
    new-instance v19, Lcom/badlogic/gdx/graphics/Mesh;

    array-length v3, v4

    div-int/2addr v3, v5

    array-length v0, v13

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v3, v2, v10}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 249
    .local v19, "result":Lcom/badlogic/gdx/graphics/Mesh;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 250
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 251
    return-object v19
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 871
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 872
    .local v2, "i":I
    const-string v4, "Managed meshes/app: { "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    sget-object v4, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 874
    .local v0, "app":Lcom/badlogic/gdx/Application;
    sget-object v4, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 877
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    :cond_0
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static invalidateAllMeshes(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 856
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 857
    .local v1, "meshesArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Mesh;>;"
    if-nez v1, :cond_1

    .line 862
    :cond_0
    return-void

    .line 858
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    .line 859
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->invalidate()V

    .line 860
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->invalidate()V

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V
    .locals 6
    .param p0, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p1, "vertices"    # [F
    .param p2, "vertexSize"    # I
    .param p3, "offset"    # I
    .param p4, "dimensions"    # I
    .param p5, "start"    # I
    .param p6, "count"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 960
    if-ltz p3, :cond_0

    if-lt p4, v4, :cond_0

    add-int v3, p3, p4

    if-le v3, p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 961
    :cond_1
    if-ltz p5, :cond_2

    if-lt p6, v4, :cond_2

    add-int v3, p5, p6

    mul-int/2addr v3, p2

    array-length v4, p1

    if-le v3, v4, :cond_3

    .line 962
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vertexSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 965
    :cond_3
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 967
    .local v2, "tmp":Lcom/badlogic/gdx/math/Vector3;
    mul-int v3, p5, p2

    add-int v1, p3, v3

    .line 968
    .local v1, "idx":I
    packed-switch p4, :pswitch_data_0

    .line 994
    :cond_4
    return-void

    .line 970
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_4

    .line 971
    aget v3, p1, v1

    invoke-virtual {v2, v3, v5, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 972
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v1

    .line 973
    add-int/2addr v1, p2

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p6, :cond_4

    .line 978
    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 979
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v1

    .line 980
    add-int/lit8 v3, v1, 0x1

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v4, p1, v3

    .line 981
    add-int/2addr v1, p2

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 985
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p6, :cond_4

    .line 986
    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x2

    aget v5, p1, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 987
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v1

    .line 988
    add-int/lit8 v3, v1, 0x1

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v4, p1, v3

    .line 989
    add-int/lit8 v3, v1, 0x2

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, p1, v3

    .line 990
    add-int/2addr v1, p2

    .line 985
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static transformUV(Lcom/badlogic/gdx/math/Matrix3;[FIIII)V
    .locals 6
    .param p0, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;
    .param p1, "vertices"    # [F
    .param p2, "vertexSize"    # I
    .param p3, "offset"    # I
    .param p4, "start"    # I
    .param p5, "count"    # I

    .prologue
    .line 1027
    if-ltz p4, :cond_0

    const/4 v3, 0x1

    if-lt p5, v3, :cond_0

    add-int v3, p4, p5

    mul-int/2addr v3, p2

    array-length v4, p1

    if-le v3, v4, :cond_1

    .line 1028
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vertexSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1031
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 1033
    .local v2, "tmp":Lcom/badlogic/gdx/math/Vector2;
    mul-int v3, p4, p2

    add-int v1, p3, v3

    .line 1034
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_2

    .line 1035
    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector2;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector2;

    .line 1036
    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, p1, v1

    .line 1037
    add-int/lit8 v3, v1, 0x1

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, p1, v3

    .line 1038
    add-int/2addr v1, p2

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 446
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->bind()V

    .line 456
    :cond_0
    return-void
.end method

.method public calculateBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    .prologue
    .line 613
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    .line 614
    .local v0, "bbox":Lcom/badlogic/gdx/math/collision/BoundingBox;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)V

    .line 615
    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 661
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 670
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 10
    .param p1, "bbox"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    const/4 v9, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v2

    .line 624
    .local v2, "numVertices":I
    if-nez v2, :cond_0

    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v8, "No vertices defined"

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 626
    :cond_0
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 627
    .local v6, "verts":Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 628
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    .line 629
    .local v4, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v7, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v3, v7, 0x4

    .line 630
    .local v3, "offset":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v5, v7, 0x4

    .line 631
    .local v5, "vertexSize":I
    move v1, v3

    .line 633
    .local v1, "idx":I
    iget v7, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    packed-switch v7, :pswitch_data_0

    .line 653
    :cond_1
    return-void

    .line 635
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 636
    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {p1, v7, v9, v9}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 637
    add-int/2addr v1, v5

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 642
    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    invoke-virtual {p1, v7, v8, v9}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 643
    add-int/2addr v1, v5

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 647
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_1

    .line 648
    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 649
    add-int/2addr v1, v5

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public calculateRadius(FFF)F
    .locals 7
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "centerZ"    # F

    .prologue
    .line 831
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(FFFII)F
    .locals 7
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "centerZ"    # F
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 813
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F
    .locals 2
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "centerZ"    # F
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .param p6, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 793
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadiusSquared(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 7
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 838
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;II)F
    .locals 7
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 822
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;IILcom/badlogic/gdx/math/Matrix4;)F
    .locals 7
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 802
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadiusSquared(FFFIILcom/badlogic/gdx/math/Matrix4;)F
    .locals 18
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "centerZ"    # F
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .param p6, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v7

    .line 741
    .local v7, "numIndices":I
    if-ltz p4, :cond_0

    const/4 v14, 0x1

    move/from16 v0, p5

    if-lt v0, v14, :cond_0

    add-int v14, p4, p5

    if-le v14, v7, :cond_1

    :cond_0
    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Not enough indices"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 743
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v14}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    .line 744
    .local v13, "verts":Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v14}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    .line 745
    .local v6, "index":Ljava/nio/ShortBuffer;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    .line 746
    .local v8, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v14, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v9, v14, 0x4

    .line 747
    .local v9, "posoff":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v14}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v14

    iget v14, v14, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v12, v14, 0x4

    .line 748
    .local v12, "vertexSize":I
    add-int v3, p4, p5

    .line 750
    .local v3, "end":I
    const/4 v11, 0x0

    .line 752
    .local v11, "result":F
    iget v14, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    packed-switch v14, :pswitch_data_0

    .line 781
    :cond_2
    return v11

    .line 754
    :pswitch_0
    move/from16 v4, p4

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 755
    invoke-virtual {v6, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v14

    mul-int/2addr v14, v12

    add-int v5, v14, v9

    .line 756
    .local v5, "idx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 757
    if-eqz p6, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 758
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v10

    .line 759
    .local v10, "r":F
    cmpl-float v14, v10, v11

    if-lez v14, :cond_4

    move v11, v10

    .line 754
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 763
    .end local v4    # "i":I
    .end local v5    # "idx":I
    .end local v10    # "r":F
    :pswitch_1
    move/from16 v4, p4

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 764
    invoke-virtual {v6, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v14

    mul-int/2addr v14, v12

    add-int v5, v14, v9

    .line 765
    .restart local v5    # "idx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v15

    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 766
    if-eqz p6, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 767
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v10

    .line 768
    .restart local v10    # "r":F
    cmpl-float v14, v10, v11

    if-lez v14, :cond_6

    move v11, v10

    .line 763
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 772
    .end local v4    # "i":I
    .end local v5    # "idx":I
    .end local v10    # "r":F
    :pswitch_2
    move/from16 v4, p4

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 773
    invoke-virtual {v6, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v14

    mul-int/2addr v14, v12

    add-int v5, v14, v9

    .line 774
    .restart local v5    # "idx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v15

    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v16

    add-int/lit8 v17, v5, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v17

    invoke-virtual/range {v14 .. v17}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 775
    if-eqz p6, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 776
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v10

    .line 777
    .restart local v10    # "r":F
    cmpl-float v14, v10, v11

    if-lez v14, :cond_8

    move v11, v10

    .line 772
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public copy(Z)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "isStatic"    # Z

    .prologue
    .line 1138
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->copy(ZZ[I)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public copy(ZZ[I)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 31
    .param p1, "isStatic"    # Z
    .param p2, "removeDuplicates"    # Z
    .param p3, "usage"    # [I

    .prologue
    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v27

    div-int/lit8 v25, v27, 0x4

    .line 1052
    .local v25, "vertexSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v21

    .line 1053
    .local v21, "numVertices":I
    mul-int v27, v21, v25

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v26, v0

    .line 1054
    .local v26, "vertices":[F
    const/16 v27, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    .line 1055
    const/4 v9, 0x0

    .line 1056
    .local v9, "checks":[S
    const/4 v8, 0x0

    .line 1057
    .local v8, "attrs":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/16 v19, 0x0

    .line 1058
    .local v19, "newVertexSize":I
    if-eqz p3, :cond_4

    .line 1059
    const/16 v23, 0x0

    .line 1060
    .local v23, "size":I
    const/4 v7, 0x0

    .line 1061
    .local v7, "as":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_1

    .line 1062
    aget v27, p3, v11

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 1063
    aget v27, p3, v11

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    move/from16 v27, v0

    add-int v23, v23, v27

    .line 1064
    add-int/lit8 v7, v7, 0x1

    .line 1061
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    if-lez v23, :cond_4

    .line 1067
    new-array v8, v7, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 1068
    move/from16 v0, v23

    new-array v9, v0, [S

    .line 1069
    const/4 v12, -0x1

    .line 1070
    .local v12, "idx":I
    const/4 v6, -0x1

    .line 1071
    .local v6, "ai":I
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_4

    .line 1072
    aget v27, p3, v11

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    .line 1073
    .local v5, "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez v5, :cond_2

    .line 1071
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1074
    :cond_2
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_3
    iget v0, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 1075
    add-int/lit8 v12, v12, 0x1

    iget v0, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move/from16 v27, v0

    add-int v27, v27, v16

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v9, v12

    .line 1074
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1076
    :cond_3
    add-int/lit8 v6, v6, 0x1

    new-instance v27, Lcom/badlogic/gdx/graphics/VertexAttribute;

    iget v0, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    move/from16 v28, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    move/from16 v29, v0

    iget-object v0, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-direct/range {v27 .. v30}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v27, v8, v6

    .line 1077
    iget v0, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    move/from16 v27, v0

    add-int v19, v19, v27

    goto :goto_2

    .line 1081
    .end local v5    # "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v6    # "ai":I
    .end local v7    # "as":I
    .end local v11    # "i":I
    .end local v12    # "idx":I
    .end local v16    # "j":I
    .end local v23    # "size":I
    :cond_4
    if-nez v9, :cond_6

    .line 1082
    move/from16 v0, v25

    new-array v9, v0, [S

    .line 1083
    const/4 v11, 0x0

    .local v11, "i":S
    :goto_4
    move/from16 v0, v25

    if-ge v11, v0, :cond_5

    .line 1084
    aput-short v11, v9, v11

    .line 1083
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    int-to-short v11, v0

    goto :goto_4

    .line 1085
    :cond_5
    move/from16 v19, v25

    .line 1088
    .end local v11    # "i":S
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v20

    .line 1089
    .local v20, "numIndices":I
    const/4 v15, 0x0

    .line 1090
    .local v15, "indices":[S
    if-lez v20, :cond_f

    .line 1091
    move/from16 v0, v20

    new-array v15, v0, [S

    .line 1092
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 1093
    if-nez p2, :cond_7

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 1094
    :cond_7
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 1095
    .local v24, "tmp":[F
    const/16 v23, 0x0

    .line 1096
    .restart local v23    # "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    move/from16 v0, v20

    if-ge v11, v0, :cond_e

    .line 1097
    aget-short v27, v15, v11

    mul-int v13, v27, v25

    .line 1098
    .local v13, "idx1":I
    const/16 v18, -0x1

    .line 1099
    .local v18, "newIndex":S
    if-eqz p2, :cond_b

    .line 1100
    const/16 v16, 0x0

    .local v16, "j":S
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    if-gez v18, :cond_b

    .line 1101
    mul-int v14, v16, v19

    .line 1102
    .local v14, "idx2":I
    const/4 v10, 0x1

    .line 1103
    .local v10, "found":Z
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_7
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    if-eqz v10, :cond_9

    .line 1104
    add-int v27, v14, v17

    aget v27, v24, v27

    aget-short v28, v9, v17

    add-int v28, v28, v13

    aget v28, v26, v28

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_8

    const/4 v10, 0x0

    .line 1103
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1106
    :cond_9
    if-eqz v10, :cond_a

    move/from16 v18, v16

    .line 1100
    :cond_a
    add-int/lit8 v27, v16, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v16, v0

    goto :goto_6

    .line 1109
    .end local v10    # "found":Z
    .end local v14    # "idx2":I
    .end local v16    # "j":S
    .end local v17    # "k":I
    :cond_b
    if-lez v18, :cond_c

    .line 1110
    aput-short v18, v15, v11

    .line 1096
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1112
    :cond_c
    mul-int v12, v23, v19

    .line 1113
    .restart local v12    # "idx":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_9
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 1114
    add-int v27, v12, v16

    aget-short v28, v9, v16

    add-int v28, v28, v13

    aget v28, v26, v28

    aput v28, v24, v27

    .line 1113
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 1115
    :cond_d
    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v15, v11

    .line 1116
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 1119
    .end local v12    # "idx":I
    .end local v13    # "idx1":I
    .end local v16    # "j":I
    .end local v18    # "newIndex":S
    :cond_e
    move-object/from16 v26, v24

    .line 1120
    move/from16 v21, v23

    .line 1125
    .end local v11    # "i":I
    .end local v23    # "size":I
    .end local v24    # "tmp":[F
    :cond_f
    if-nez v8, :cond_11

    .line 1126
    new-instance v22, Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v15, :cond_10

    const/16 v27, 0x0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v28

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 1129
    .local v22, "result":Lcom/badlogic/gdx/graphics/Mesh;
    :goto_b
    const/16 v27, 0x0

    mul-int v28, v21, v19

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1130
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1131
    return-object v22

    .line 1126
    .end local v22    # "result":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_10
    array-length v0, v15

    move/from16 v27, v0

    goto :goto_a

    .line 1128
    :cond_11
    new-instance v22, Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v15, :cond_12

    const/16 v27, 0x0

    :goto_c
    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .restart local v22    # "result":Lcom/badlogic/gdx/graphics/Mesh;
    goto :goto_b

    .end local v22    # "result":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_12
    array-length v0, v15

    move/from16 v27, v0

    goto :goto_c
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 580
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->dispose()V

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->dispose()V

    .line 583
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 679
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 14
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    .line 691
    .local v5, "numIndices":I
    if-ltz p2, :cond_0

    const/4 v10, 0x1

    move/from16 v0, p3

    if-lt v0, v10, :cond_0

    add-int v10, p2, p3

    if-le v10, v5, :cond_1

    .line 692
    :cond_0
    new-instance v10, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not enough indices ( offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", max="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " )"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 695
    :cond_1
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v10}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 696
    .local v9, "verts":Ljava/nio/FloatBuffer;
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v10}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    .line 697
    .local v4, "index":Ljava/nio/ShortBuffer;
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    .line 698
    .local v6, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v10, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v7, v10, 0x4

    .line 699
    .local v7, "posoff":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v10}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v10

    iget v10, v10, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v8, v10, 0x4

    .line 700
    .local v8, "vertexSize":I
    add-int v1, p2, p3

    .line 702
    .local v1, "end":I
    iget v10, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    packed-switch v10, :pswitch_data_0

    .line 728
    :cond_2
    return-object p1

    .line 704
    :pswitch_0
    move/from16 v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 705
    invoke-virtual {v4, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    mul-int/2addr v10, v8

    add-int v3, v10, v7

    .line 706
    .local v3, "idx":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 707
    if-eqz p4, :cond_3

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 708
    :cond_3
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v10}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 704
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    .end local v2    # "i":I
    .end local v3    # "idx":I
    :pswitch_1
    move/from16 v2, p2

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 713
    invoke-virtual {v4, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    mul-int/2addr v10, v8

    add-int v3, v10, v7

    .line 714
    .restart local v3    # "idx":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 715
    if-eqz p4, :cond_4

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 716
    :cond_4
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v10}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 720
    .end local v2    # "i":I
    .end local v3    # "idx":I
    :pswitch_2
    move/from16 v2, p2

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 721
    invoke-virtual {v4, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    mul-int/2addr v10, v8

    add-int v3, v10, v7

    .line 722
    .restart local v3    # "idx":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v12

    add-int/lit8 v13, v3, 0x2

    invoke-virtual {v9, v13}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 723
    if-eqz p4, :cond_5

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 724
    :cond_5
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v10}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIndices(II[SI)V
    .locals 5
    .param p1, "srcOffset"    # I
    .param p2, "count"    # I
    .param p3, "indices"    # [S
    .param p4, "destOffset"    # I

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    .line 393
    .local v0, "max":I
    if-gez p2, :cond_0

    sub-int p2, v0, p1

    .line 394
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    add-int v2, p1, p2

    if-le v2, v0, :cond_2

    .line 395
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid range specified, offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    :cond_2
    array-length v2, p3

    sub-int/2addr v2, p4

    if-ge v2, p2, :cond_3

    .line 398
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not enough room in indices array, has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shorts, needs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .line 400
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 401
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 402
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 403
    return-void
.end method

.method public getIndices(I[SI)V
    .locals 1
    .param p1, "srcOffset"    # I
    .param p2, "indices"    # [S
    .param p3, "destOffset"    # I

    .prologue
    .line 382
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 383
    return-void
.end method

.method public getIndices([S)V
    .locals 1
    .param p1, "indices"    # [S

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([SI)V

    .line 366
    return-void
.end method

.method public getIndices([SI)V
    .locals 1
    .param p1, "indices"    # [S
    .param p2, "destOffset"    # I

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(I[SI)V

    .line 374
    return-void
.end method

.method public getIndicesBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIndices()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    return v0
.end method

.method public getMaxVertices()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getNumMaxVertices()I

    move-result v0

    return v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getNumVertices()I

    move-result v0

    return v0
.end method

.method public getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4
    .param p1, "usage"    # I

    .prologue
    .line 590
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    .line 591
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v2

    .line 592
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 593
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 595
    :goto_1
    return-object v3

    .line 592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getVertexSize()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    return v0
.end method

.method public getVertices(II[F)[F
    .locals 1
    .param p1, "srcOffset"    # I
    .param p2, "count"    # I
    .param p3, "vertices"    # [F

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices(II[FI)[F
    .locals 5
    .param p1, "srcOffset"    # I
    .param p2, "count"    # I
    .param p3, "vertices"    # [F
    .param p4, "destOffset"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x4

    .line 324
    .local v0, "max":I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 325
    sub-int p2, v0, p1

    .line 326
    array-length v2, p3

    sub-int/2addr v2, p4

    if-le p2, v2, :cond_0

    array-length v2, p3

    sub-int p2, v2, p4

    .line 328
    :cond_0
    if-ltz p1, :cond_1

    if-lez p2, :cond_1

    add-int v2, p1, p2

    if-gt v2, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v2, p3

    if-lt p4, v2, :cond_2

    .line 329
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 330
    :cond_2
    array-length v2, p3

    sub-int/2addr v2, p4

    if-ge v2, p2, :cond_3

    .line 331
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not enough room in vertices array, has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " floats, needs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .line 334
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 336
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 337
    return-object p3
.end method

.method public getVertices(I[F)[F
    .locals 1
    .param p1, "srcOffset"    # I
    .param p2, "vertices"    # [F

    .prologue
    .line 304
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices([F)[F
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    .line 296
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getVerticesBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V
    .locals 6
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"    # I

    .prologue
    .line 496
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v4

    :goto_0
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V

    .line 497
    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v4

    goto :goto_0
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V
    .locals 6
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 523
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V

    .line 524
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V
    .locals 6
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "autoBind"    # Z

    .prologue
    const/16 v5, 0x1403

    .line 551
    if-nez p4, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 555
    :cond_2
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    if-eqz v3, :cond_4

    .line 556
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v3

    if-lez v3, :cond_3

    .line 557
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 558
    .local v0, "buffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .line 559
    .local v2, "oldPosition":I
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    .line 560
    .local v1, "oldLimit":I
    invoke-virtual {v0, p3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 561
    add-int v3, p3, p4

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 562
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, p2, p4, v5, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 563
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 564
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 575
    .end local v0    # "buffer":Ljava/nio/ShortBuffer;
    .end local v1    # "oldLimit":I
    .end local v2    # "oldPosition":I
    :goto_1
    if-eqz p5, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0

    .line 566
    :cond_3
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    goto :goto_1

    .line 569
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v3

    if-lez v3, :cond_5

    .line 570
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    mul-int/lit8 v4, p3, 0x2

    invoke-interface {v3, p2, p4, v5, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    goto :goto_1

    .line 572
    :cond_5
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 10
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    .line 888
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    .line 889
    .local v5, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v8, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v4, v8, 0x4

    .line 890
    .local v4, "offset":I
    iget v2, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 891
    .local v2, "numComponents":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v3

    .line 892
    .local v3, "numVertices":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v8

    div-int/lit8 v6, v8, 0x4

    .line 894
    .local v6, "vertexSize":I
    mul-int v8, v3, v6

    new-array v7, v8, [F

    .line 895
    .local v7, "vertices":[F
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 897
    move v1, v4

    .line 898
    .local v1, "idx":I
    packed-switch v2, :pswitch_data_0

    .line 922
    :cond_0
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 923
    return-void

    .line 900
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 901
    aget v8, v7, v1

    mul-float/2addr v8, p1

    aput v8, v7, v1

    .line 902
    add-int/2addr v1, v6

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 907
    aget v8, v7, v1

    mul-float/2addr v8, p1

    aput v8, v7, v1

    .line 908
    add-int/lit8 v8, v1, 0x1

    aget v9, v7, v8

    mul-float/2addr v9, p2

    aput v9, v7, v8

    .line 909
    add-int/2addr v1, v6

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 914
    aget v8, v7, v1

    mul-float/2addr v8, p1

    aput v8, v7, v1

    .line 915
    add-int/lit8 v8, v1, 0x1

    aget v9, v7, v8

    mul-float/2addr v9, p2

    aput v9, v7, v8

    .line 916
    add-int/lit8 v8, v1, 0x2

    aget v9, v7, v8

    mul-float/2addr v9, p3

    aput v9, v7, v8

    .line 917
    add-int/2addr v1, v6

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoBind(Z)V
    .locals 0
    .param p1, "autoBind"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 438
    return-void
.end method

.method public setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3
    .param p1, "indices"    # [S

    .prologue
    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->setIndices([SII)V

    .line 347
    return-object p0
.end method

.method public setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p1, "indices"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->setIndices([SII)V

    .line 359
    return-object p0
.end method

.method public setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3
    .param p1, "vertices"    # [F

    .prologue
    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->setVertices([FII)V

    .line 261
    return-object p0
.end method

.method public setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->setVertices([FII)V

    .line 273
    return-object p0
.end method

.method public transform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 930
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;II)V

    .line 931
    return-void
.end method

.method public transform(Lcom/badlogic/gdx/math/Matrix4;II)V
    .locals 9
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 935
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    .line 936
    .local v8, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v0, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v3, v0, 0x4

    .line 937
    .local v3, "posOffset":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v0

    div-int/lit8 v2, v0, 0x4

    .line 938
    .local v2, "stride":I
    iget v4, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 939
    .local v4, "numComponents":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v7

    .line 941
    .local v7, "numVertices":I
    mul-int v0, p3, v2

    new-array v1, v0, [F

    .line 942
    .local v1, "vertices":[F
    mul-int v0, p2, v2

    mul-int v5, p3, v2

    invoke-virtual {p0, v0, v5, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    .line 944
    const/4 v5, 0x0

    move-object v0, p1

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V

    .line 946
    mul-int v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->updateVertices(I[F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 947
    return-void
.end method

.method public transformUV(Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 1001
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->transformUV(Lcom/badlogic/gdx/math/Matrix3;II)V

    .line 1002
    return-void
.end method

.method protected transformUV(Lcom/badlogic/gdx/math/Matrix3;II)V
    .locals 9
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v8, 0x0

    .line 1006
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    .line 1007
    .local v7, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v3, v0, 0x4

    .line 1008
    .local v3, "offset":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v0

    div-int/lit8 v2, v0, 0x4

    .line 1009
    .local v2, "vertexSize":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v6

    .line 1011
    .local v6, "numVertices":I
    mul-int v0, v6, v2

    new-array v1, v0, [F

    .line 1013
    .local v1, "vertices":[F
    array-length v0, v1

    invoke-virtual {p0, v8, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    move-object v0, p1

    move v4, p2

    move v5, p3

    .line 1014
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;->transformUV(Lcom/badlogic/gdx/math/Matrix3;[FIIII)V

    .line 1015
    array-length v0, v1

    invoke-virtual {p0, v1, v8, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1017
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 464
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 473
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->unbind()V

    .line 474
    :cond_0
    return-void
.end method

.method public updateVertices(I[F)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "targetOffset"    # I
    .param p2, "source"    # [F

    .prologue
    .line 280
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->updateVertices(I[FII)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public updateVertices(I[FII)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p1, "targetOffset"    # I
    .param p2, "source"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->updateVertices(I[FII)V

    .line 290
    return-object p0
.end method
