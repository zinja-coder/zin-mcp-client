.class Lcom/badlogic/gdx/utils/Json$FieldMetadata;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldMetadata"
.end annotation


# instance fields
.field elementType:Ljava/lang/Class;

.field field:Lcom/badlogic/gdx/utils/reflect/Field;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/reflect/Field;)V
    .locals 3
    .param p1, "field"    # Lcom/badlogic/gdx/utils/reflect/Field;

    .prologue
    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 1057
    const-class v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1059
    .local v0, "index":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/reflect/Field;->getElementType(I)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    .line 1060
    return-void

    .line 1057
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
