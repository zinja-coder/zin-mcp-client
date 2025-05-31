.class Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;
.super Ljava/lang/Object;
.source "UBJsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/UBJsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsonObject"
.end annotation


# instance fields
.field final array:Z

.field final synthetic this$0:Lcom/badlogic/gdx/utils/UBJsonWriter;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/UBJsonWriter;Z)V
    .locals 2
    .param p2, "array"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iput-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->this$0:Lcom/badlogic/gdx/utils/UBJsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    .line 572
    iget-object v1, p1, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    if-eqz p2, :cond_0

    const/16 v0, 0x5b

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 573
    return-void

    .line 572
    :cond_0
    const/16 v0, 0x7b

    goto :goto_0
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->this$0:Lcom/badlogic/gdx/utils/UBJsonWriter;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 577
    return-void

    .line 576
    :cond_0
    const/16 v0, 0x7d

    goto :goto_0
.end method
