.class public Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
.super Ljava/lang/Object;
.source "NodePart.java"


# instance fields
.field public bones:[Lcom/badlogic/gdx/math/Matrix4;

.field public enabled:Z

.field public invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArrayMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field public material:Lcom/badlogic/gdx/graphics/g3d/Material;

.field public meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 1
    .param p1, "meshPart"    # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .param p2, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 53
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 54
    return-void
.end method


# virtual methods
.method public setRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartOffset:I

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartSize:I

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->primitiveType:I

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    return-object p1
.end method
