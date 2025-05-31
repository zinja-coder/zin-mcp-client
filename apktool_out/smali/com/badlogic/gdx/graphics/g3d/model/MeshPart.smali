.class public Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
.super Ljava/lang/Object;
.source "MeshPart.java"


# instance fields
.field public id:Ljava/lang/String;

.field public indexOffset:I

.field public mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field public numVertices:I

.field public primitiveType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .locals 6
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .prologue
    .line 76
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;III)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;III)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "type"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 68
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    .line 69
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    .line 70
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .prologue
    .line 84
    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 90
    if-nez p1, :cond_1

    .line 93
    .end local p1    # "arg0":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 91
    .restart local p1    # "arg0":Ljava/lang/Object;
    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    instance-of v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz v1, :cond_0

    .line 93
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->equals(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Z

    move-result v0

    goto :goto_0
.end method
