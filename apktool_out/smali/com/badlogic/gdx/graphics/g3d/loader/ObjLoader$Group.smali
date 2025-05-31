.class Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
.super Ljava/lang/Object;
.source "ObjLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Group"
.end annotation


# instance fields
.field faces:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hasNorms:Z

.field hasUVs:Z

.field mat:Lcom/badlogic/gdx/graphics/g3d/Material;

.field materialName:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field numFaces:I

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->this$0:Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    .line 341
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->faces:Lcom/badlogic/gdx/utils/Array;

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    .line 343
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Material;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->mat:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 344
    const-string v0, "default"

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    .line 345
    return-void
.end method
