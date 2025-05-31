.class public Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;
.super Ljava/lang/Object;
.source "ModelBuilder.java"


# instance fields
.field private builders:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lcom/badlogic/gdx/graphics/g3d/Model;

.field private node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

.field private tmpTransform:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->tmpTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public static createFromMesh(Lcom/badlogic/gdx/graphics/Mesh;IIILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 5
    .param p0, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p1, "indexOffset"    # I
    .param p2, "vertexCount"    # I
    .param p3, "primitiveType"    # I
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/Model;-><init>()V

    .line 393
    .local v3, "result":Lcom/badlogic/gdx/graphics/g3d/Model;
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    .line 394
    .local v0, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    const-string v4, "part1"

    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 395
    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    .line 396
    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    .line 397
    iput p3, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 398
    iput-object p0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 400
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>()V

    .line 401
    .local v2, "partMaterial":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iput-object p4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 402
    iput-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 403
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 404
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const-string v4, "node1"

    iput-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 405
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 407
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 408
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, p4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 409
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 410
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 411
    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/graphics/g3d/Model;->manageDisposable(Lcom/badlogic/gdx/utils/Disposable;)V

    .line 412
    return-object v3
.end method

.method public static createFromMesh(Lcom/badlogic/gdx/graphics/Mesh;ILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 2
    .param p0, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p1, "primitiveType"    # I
    .param p2, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createFromMesh(Lcom/badlogic/gdx/graphics/Mesh;IIILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public static createFromMesh([F[Lcom/badlogic/gdx/graphics/VertexAttribute;[SILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 4
    .param p0, "vertices"    # [F
    .param p1, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;
    .param p2, "indices"    # [S
    .param p3, "primitiveType"    # I
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 418
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    array-length v1, p0

    array-length v2, p2

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 419
    .local v0, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 420
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 421
    array-length v1, p2

    invoke-static {v0, v3, v1, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createFromMesh(Lcom/badlogic/gdx/graphics/Mesh;IIILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v1

    return-object v1
.end method

.method private endnode()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 89
    :cond_0
    return-void
.end method

.method private getBuilder(Lcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    .locals 5
    .param p1, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .prologue
    .line 53
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    .line 54
    .local v1, "mb":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex()S

    move-result v3

    const/16 v4, 0x3fff

    if-ge v3, v4, :cond_0

    .line 58
    .end local v1    # "mb":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    :goto_0
    return-object v1

    .line 55
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;-><init>()V

    .line 56
    .local v2, "result":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 57
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v1, v2

    .line 58
    goto :goto_0
.end method

.method public static rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 3
    .param p0, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .prologue
    .line 363
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 364
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 365
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 366
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 367
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-static {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/graphics/g3d/model/Node;)V

    goto :goto_0

    .line 368
    .end local v1    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_0
    return-void
.end method

.method private static rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/graphics/g3d/model/Node;)V
    .locals 6
    .param p0, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .prologue
    const/4 v5, 0x1

    .line 371
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 372
    .local v2, "mpm":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 375
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 376
    :cond_2
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/Model;->manageDisposable(Lcom/badlogic/gdx/utils/Disposable;)V

    goto :goto_0

    .line 379
    .end local v2    # "mpm":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 380
    .local v0, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/graphics/g3d/model/Node;)V

    goto :goto_1

    .line 381
    .end local v0    # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_4
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call end() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Model;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 67
    return-void
.end method

.method public createArrow(FFFFFFFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 10
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "capLength"    # F
    .param p8, "stemThickness"    # F
    .param p9, "divisions"    # I
    .param p10, "primitiveType"    # I
    .param p11, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p12, "attributes"    # J

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 460
    const-string v2, "arrow"

    move-object v1, p0

    move/from16 v3, p10

    move-wide/from16 v4, p12

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->arrow(FFFFFFFFI)V

    .line 461
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createArrow(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 16
    .param p1, "from"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "to"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p4, "attributes"    # J

    .prologue
    .line 467
    move-object/from16 v0, p1

    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p2

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p2

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p2

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v11, 0x5

    const/4 v12, 0x4

    move-object/from16 v2, p0

    move-object/from16 v13, p3

    move-wide/from16 v14, p4

    invoke-virtual/range {v2 .. v15}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createArrow(FFFFFFFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v2

    return-object v2
.end method

.method public createBox(FFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 8
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "primitiveType"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 199
    const-string v2, "box"

    move-object v1, p0

    move v3, p4

    move-wide v4, p6

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->box(FFF)V

    .line 200
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createBox(FFFLcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p5, "attributes"    # J

    .prologue
    .line 189
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createBox(FFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCapsule(FFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 8
    .param p1, "radius"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "primitiveType"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 356
    const-string v2, "capsule"

    move-object v1, p0

    move v3, p4

    move-wide v4, p6

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->capsule(FFI)V

    .line 357
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCapsule(FFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 9
    .param p1, "radius"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p5, "attributes"    # J

    .prologue
    .line 346
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCapsule(FFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 13
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J

    .prologue
    .line 278
    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J
    .param p9, "angleFrom"    # F
    .param p10, "angleTo"    # F

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 297
    const-string v2, "cone"

    move-object v1, p0

    move v3, p5

    move-wide v4, p7

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->cone(FFFIFF)V

    .line 298
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCone(FFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 10
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .prologue
    .line 269
    const/4 v6, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCone(FFFILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 12
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J
    .param p8, "angleFrom"    # F
    .param p9, "angleTo"    # F

    .prologue
    .line 287
    const/4 v6, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 13
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J

    .prologue
    .line 241
    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J
    .param p9, "angleFrom"    # F
    .param p10, "angleTo"    # F

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 260
    const-string v2, "cylinder"

    move-object v1, p0

    move v3, p5

    move-wide v4, p7

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->cylinder(FFFIFF)V

    .line 261
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCylinder(FFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 10
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .prologue
    .line 232
    const/4 v6, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCylinder(FFFILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 12
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J
    .param p8, "angleFrom"    # F
    .param p9, "angleTo"    # F

    .prologue
    .line 250
    const/4 v6, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createLineGrid(IIFFLcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 16
    .param p1, "xDivisions"    # I
    .param p2, "zDivisions"    # I
    .param p3, "xSize"    # F
    .param p4, "zSize"    # F
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .prologue
    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 478
    const-string v4, "lines"

    const/4 v5, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v6, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v2

    .line 479
    .local v2, "partBuilder":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    move/from16 v0, p1

    int-to-float v15, v0

    mul-float v13, v15, p3

    .local v13, "xlength":F
    move/from16 v0, p2

    int-to-float v15, v0

    mul-float v14, v15, p4

    .local v14, "zlength":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v9, v13, v15

    .local v9, "hxlength":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v10, v14, v15

    .line 480
    .local v10, "hzlength":F
    neg-float v3, v9

    .local v3, "x1":F
    const/4 v4, 0x0

    .local v4, "y1":F
    move v5, v10

    .local v5, "z1":F
    neg-float v6, v9

    .local v6, "x2":F
    const/4 v7, 0x0

    .local v7, "y2":F
    neg-float v8, v10

    .line 481
    .local v8, "z2":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p1

    if-gt v11, v0, :cond_0

    .line 482
    invoke-interface/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(FFFFFF)V

    .line 483
    add-float v3, v3, p3

    .line 484
    add-float v6, v6, p3

    .line 481
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 487
    :cond_0
    neg-float v3, v9

    .line 488
    const/4 v4, 0x0

    .line 489
    neg-float v5, v10

    .line 490
    move v6, v9

    .line 491
    const/4 v7, 0x0

    .line 492
    neg-float v8, v10

    .line 493
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    move/from16 v0, p2

    if-gt v12, v0, :cond_1

    .line 494
    invoke-interface/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(FFFFFF)V

    .line 495
    add-float v5, v5, p4

    .line 496
    add-float v8, v8, p4

    .line 493
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 499
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v15

    return-object v15
.end method

.method public createRect(FFFFFFFFFFFFFFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 16
    .param p1, "x00"    # F
    .param p2, "y00"    # F
    .param p3, "z00"    # F
    .param p4, "x10"    # F
    .param p5, "y10"    # F
    .param p6, "z10"    # F
    .param p7, "x11"    # F
    .param p8, "y11"    # F
    .param p9, "z11"    # F
    .param p10, "x01"    # F
    .param p11, "y01"    # F
    .param p12, "z01"    # F
    .param p13, "normalX"    # F
    .param p14, "normalY"    # F
    .param p15, "normalZ"    # F
    .param p16, "primitiveType"    # I
    .param p17, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p18, "attributes"    # J

    .prologue
    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 221
    const-string v2, "rect"

    move-object/from16 v1, p0

    move/from16 v3, p16

    move-wide/from16 v4, p18

    move-object/from16 v6, p17

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-interface/range {v0 .. v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(FFFFFFFFFFFFFFF)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createRect(FFFFFFFFFFFFFFFLcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 21
    .param p1, "x00"    # F
    .param p2, "y00"    # F
    .param p3, "z00"    # F
    .param p4, "x10"    # F
    .param p5, "y10"    # F
    .param p6, "z10"    # F
    .param p7, "x11"    # F
    .param p8, "y11"    # F
    .param p9, "z11"    # F
    .param p10, "x01"    # F
    .param p11, "y01"    # F
    .param p12, "z01"    # F
    .param p13, "normalX"    # F
    .param p14, "normalY"    # F
    .param p15, "normalZ"    # F
    .param p16, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p17, "attributes"    # J

    .prologue
    .line 209
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v17, p16

    move-wide/from16 v18, p17

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createRect(FFFFFFFFFFFFFFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 14
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "primitiveType"    # I
    .param p7, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p8, "attributes"    # J

    .prologue
    .line 316
    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v12, 0x0

    const/high16 v13, 0x43340000    # 180.0f

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;JFFFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;JFFFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 10
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "primitiveType"    # I
    .param p7, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p8, "attributes"    # J
    .param p10, "angleUFrom"    # F
    .param p11, "angleUTo"    # F
    .param p12, "angleVFrom"    # F
    .param p13, "angleVTo"    # F

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 336
    const-string v2, "cylinder"

    move-object v1, p0

    move/from16 v3, p6

    move-wide/from16 v4, p8

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->sphere(FFFIIFFFF)V

    .line 338
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createSphere(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J

    .prologue
    .line 307
    const/4 v6, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createSphere(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFFFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 15
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J
    .param p9, "angleUFrom"    # F
    .param p10, "angleUTo"    # F
    .param p11, "angleVFrom"    # F
    .param p12, "angleVTo"    # F

    .prologue
    .line 325
    const/4 v6, 0x4

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;JFFFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createXYZCoordinates(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 11
    .param p1, "axisLength"    # F
    .param p2, "capLength"    # F
    .param p3, "stemThickness"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 434
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v10

    .line 436
    .local v10, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const-string v2, "xyz"

    move-object v1, p0

    move/from16 v3, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    .line 437
    .local v0, "partBuilder":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 438
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->arrow(FFFFFFFFI)V

    .line 439
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 440
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->arrow(FFFFFFFFI)V

    .line 441
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 442
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->arrow(FFFFFFFFI)V

    .line 444
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v1

    return-object v1
.end method

.method public createXYZCoordinates(FLcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 11
    .param p1, "axisLength"    # F
    .param p2, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p3, "attributes"    # J

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 448
    const/4 v5, 0x5

    const/4 v6, 0x4

    move-object v1, p0

    move v2, p1

    move v4, v3

    move-object v7, p2

    move-wide v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createXYZCoordinates(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public end()Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 5

    .prologue
    .line 72
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Call begin() first"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 74
    .local v2, "result":Lcom/badlogic/gdx/graphics/g3d/Model;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->endnode()V

    .line 75
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 77
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    .line 78
    .local v1, "mb":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end()Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_0

    .line 79
    .end local v1    # "mb":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 81
    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 82
    return-object v2
.end method

.method public manage(Lcom/badlogic/gdx/utils/Disposable;)V
    .locals 2
    .param p1, "disposable"    # Lcom/badlogic/gdx/utils/Disposable;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call begin() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/Model;->manageDisposable(Lcom/badlogic/gdx/utils/Disposable;)V

    .line 129
    return-void
.end method

.method public node()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 107
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 109
    return-object v0
.end method

.method protected node(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 2
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call begin() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->endnode()V

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 100
    return-object p1
.end method

.method public node(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Model;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .prologue
    .line 116
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 117
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iput-object p1, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 118
    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChildren(Ljava/lang/Iterable;)I

    .line 119
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 120
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->getManagedDisposables()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Disposable;

    .line 121
    .local v0, "disposable":Lcom/badlogic/gdx/utils/Disposable;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->manage(Lcom/badlogic/gdx/utils/Disposable;)V

    goto :goto_0

    .line 122
    .end local v0    # "disposable":Lcom/badlogic/gdx/utils/Disposable;
    :cond_0
    return-object v2
.end method

.method public part(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;IIILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p3, "primitiveType"    # I
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 144
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    .line 145
    .local v0, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 146
    iput p3, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 147
    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 148
    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    .line 149
    iput p5, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    .line 150
    invoke-virtual {p0, v0, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V

    .line 151
    return-object v0
.end method

.method public part(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;ILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p3, "primitiveType"    # I
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 159
    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;IIILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "primitiveType"    # I
    .param p3, "attributes"    # J
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 181
    invoke-static {p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/VertexAttributes;Lcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/VertexAttributes;Lcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "primitiveType"    # I
    .param p3, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 168
    invoke-direct {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->getBuilder(Lcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    move-result-object v0

    .line 169
    .local v0, "builder":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V

    .line 170
    return-object v0
.end method

.method public part(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 2
    .param p1, "meshpart"    # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .param p2, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
